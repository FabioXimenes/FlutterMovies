import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/models/movie_model.dart';
import 'package:flutter_movie_app/app/shared/widgets/production_card_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/movie_poster_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/page_dots_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/production_list_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/similar_poster_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    controller.getNowPlayingMovies();
    controller.getTrendingMovies();
    controller.getTopRatedMovies();
    controller.getTrendingTv();
    controller.getMovieGenreList();
    controller.getTvGenreList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(
        elevation: 0,
        child: Container(
          color: Colors.black,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 40,
                          ),
                          radius: 40,
                        )),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'John Doe',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'john.doe@test.com.br',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // ListTile(
              //   title: Text(
              //     'Movies',
              //     style: TextStyle(
              //       color: Colors.grey,
              //     ),
              //   ),
              //   onTap: () {},
              // ),
              // ListTile(
              //   title: Text('Series',
              //       style: TextStyle(
              //         color: Colors.grey,
              //       )),
              //   onTap: () {},
              // ),
              ExpansionTile(
                title: Text('Genres',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                backgroundColor: Color(0xFF151515),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                children: controller.hasTvGenreList
                    ? controller.tvGenreList.genres
                        .map(
                          (genre) => ListTile(
                            visualDensity: VisualDensity(
                                vertical: VisualDensity.minimumDensity),
                            title: Text(genre.name,
                                style: TextStyle(color: Colors.grey)),
                            onTap: () {
                              Modular.to.pushNamed(
                                  AppRoutes.genreRoute(genre.id, genre.name));
                            },
                          ),
                        )
                        .toList()
                    : [],
              ),
              ListTile(
                title: Text('About',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                onTap: () {
                  showAboutDialog(
                    context: context,
                    applicationName: 'Flutter Movie App',
                    applicationIcon: Image.asset(
                      'assets/logo/logo.png',
                      height: 60,
                      color: Colors.white,
                    ),
                    applicationVersion: '1.0.0',
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          widget.title,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: Search());
              }),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: false,
            expandedHeight: _size.height * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              background: Observer(
                builder: (_) {
                  return Container(
                    child: controller.hasPlayingMovies
                        ? Stack(
                            children: [
                              PageView.builder(
                                onPageChanged: controller.setPage,
                                itemCount: 5,
                                itemBuilder: (_, index) {
                                  return MoviePosterWidget(
                                      movie: controller
                                          .nowPlayingMovies.results[index]);
                                },
                              ),
                              Observer(
                                builder: (_) {
                                  return Align(
                                    alignment: Alignment.bottomCenter,
                                    child: PageDotsWidget(
                                      currentIndex: controller.currentPage,
                                      pageCount: 5,
                                      focusColor: Colors.yellow[700],
                                    ),
                                  );
                                },
                              )
                            ],
                          )
                        : Center(child: CircularProgressIndicator()),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: _size.width,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          'Popular movies',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  color: Colors.black,
                                  offset: Offset(0, 1),
                                  blurRadius: 10.0),
                            ],
                          ),
                        ),
                        Expanded(child: Center()),
                        Observer(builder: (_) {
                          return ToggleButtons(
                              children: [Text('Day'), Text('Week')],
                              isSelected: controller.movieTimeWindowSelected,
                              borderWidth: 2,
                              borderColor: Colors.grey,
                              color: Colors.white,
                              fillColor: Colors.yellow.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(50),
                              selectedBorderColor: Colors.yellow,
                              selectedColor: Colors.black,
                              textStyle: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                              constraints: BoxConstraints(
                                  maxHeight: 40, minHeight: 20, minWidth: 40),
                              onPressed: controller.setMovieTimeWindow);
                        }),
                        SizedBox(width: 10)
                      ],
                    ),
                  ),
                  Observer(
                    builder: (_) {
                      return controller.hasTrendingMovies
                          ? ProductionListWidget(
                              productions: controller.trendingMovies.results)
                          : Container(
                              height: 200,
                              child:
                                  Center(child: CircularProgressIndicator()));
                    },
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: _size.width,
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'Popular series',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  color: Colors.black,
                                  offset: Offset(0, 1),
                                  blurRadius: 10.0),
                            ],
                          ),
                        ),
                        Expanded(child: Center()),
                        Observer(builder: (_) {
                          return ToggleButtons(
                              children: [Text('Day'), Text('Week')],
                              isSelected: controller.tvTimeWindowSelected,
                              borderWidth: 2,
                              borderColor: Colors.grey,
                              color: Colors.white,
                              fillColor: Colors.yellow.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(50),
                              selectedBorderColor: Colors.yellow,
                              selectedColor: Colors.black,
                              textStyle: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                              constraints: BoxConstraints(
                                  maxHeight: 40, minHeight: 20, minWidth: 40),
                              onPressed: controller.setTvTimeWindow);
                        }),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                  Observer(
                    name: 'popularTvSeries',
                    builder: (_) {
                      return controller.hasTrendingTv
                          ? ProductionListWidget(
                              productions: controller.trendingTv.results)
                          : Container(
                              height: 200,
                              child:
                                  Center(child: CircularProgressIndicator()));
                    },
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: _size.width,
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top Rated Movies',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            offset: Offset(0, 1),
                            blurRadius: 10.0),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Observer(
                    builder: (_) {
                      return controller.hasTopRatedMovies
                          ? ProductionListWidget(
                              productions: controller.topRatedMovies.results)
                          : Container(
                              height: 200,
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Search extends SearchDelegate {
  HomeController controller = Modular.get();

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      primaryColor: Colors.black,
      brightness: Brightness.light,
      accentColor: Colors.yellow,
      cursorColor: Colors.white,
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  TextStyle get searchFieldStyle => TextStyle(fontSize: 14, color: Colors.grey);

  @override
  String get searchFieldLabel => 'Search for movies, tv series or actors...';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Observer(builder: (_) {
      return controller.hasSuggestions
          ? Container(
              padding: EdgeInsets.all(10),
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 0.7,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: controller.genericResponse.results
                    .where((e) =>
                        (e.poster_path != null || e.profile_path != null))
                    .map(
                      (element) => GestureDetector(
                        onTap: () {
                          if (element.media_type == 'movie') {
                            Modular.to.pushNamed(AppRoutes.movieId(element.id));
                          } else if (element.media_type == 'tv') {
                            Modular.to.pushNamed(AppRoutes.tvId(element.id));
                          } else if (element.media_type == 'person') {
                            Modular.to
                                .pushNamed(AppRoutes.personId(element.id));
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                  color: Colors.yellow.withOpacity(0.3)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(ApiUrls.image(
                                      element.poster_path != null
                                          ? element.poster_path
                                          : element.profile_path)))),
                        ),
                      ),
                    )
                    .toList()
                    .cast<Widget>(),
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            );
    });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query != '' && query.length > 2) {
      controller.getSearchSuggestions(query);

      return Observer(builder: (_) {
        return controller.hasSuggestions
            ? ListView.builder(
                itemCount: controller.suggestions.length > 9
                    ? 9
                    : controller.suggestions.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(
                      controller.suggestions[index],
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    focusColor: Colors.yellow,
                    visualDensity: VisualDensity.compact,
                    isThreeLine: false,
                    onTap: () {
                      query = controller.suggestions[index];
                      controller.getSearchSuggestions(query);
                      showResults(context);
                    },
                  );
                })
            : Container();
      });
    } else {
      return Container();
    }
  }
}
