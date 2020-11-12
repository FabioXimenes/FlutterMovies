import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/widgets/cast_section_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/episodes_list_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/genres_section_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/overview_section_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/similar_grid_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/trailer_card_widget.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'tv_details_controller.dart';

class TvDetailsPage extends StatefulWidget {
  final String tvId;
  const TvDetailsPage({Key key, this.tvId}) : super(key: key);

  @override
  _TvDetailsPageState createState() => _TvDetailsPageState();
}

class _TvDetailsPageState
    extends ModularState<TvDetailsPage, TvDetailsController> with TickerProviderStateMixin{
  //use 'controller' variable to access controller

  @override
  void initState() {
    controller.getTvDetails(int.parse(widget.tvId));
    controller.getTvCredits(int.parse(widget.tvId));
    controller.getTvSeasonDetails(int.parse(widget.tvId), 1);
    controller.tabController =
        TabController(length: controller.tabs.length, vsync: this);

    controller.tabController.addListener(controller.handleTabSelection);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: NestedScrollView(headerSliverBuilder: (context, value) {
        return [
          Observer(
            name: 'tvImage',
            builder: (_) {
              return SliverAppBar(
                expandedHeight: _size.height * 0.30,
                automaticallyImplyLeading: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: controller.hasTvDetails
                      ? Container(
                          height: _size.height * 0.3,
                          width: _size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                ApiUrls.image(
                                    controller.tvDetails.backdrop_path),
                              ),
                            ),
                          ),
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                ),
              );
            },
          ),
          Observer(
            name: 'tvTitle',
            builder: (_) {
              return SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  width: _size.width,
                  child: controller.hasTvDetails
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.tvDetails.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SmoothStarRating(
                                  allowHalfRating: true,
                                  borderColor: Colors.white,
                                  color: Colors.yellow,
                                  defaultIconData: Icons.star_border,
                                  filledIconData: Icons.star,
                                  halfFilledIconData: Icons.star_half,
                                  rating: controller.tvDetails.vote_average / 2,
                                  isReadOnly: true,
                                  size: 13,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  controller.tvDetails.vote_average.toString(),
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  controller.seasons,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      : Center(),
                ),
              );
            },
          ),
          Observer(
            name: 'tvOverview',
            builder: (_) {
              return SliverToBoxAdapter(
                  child: controller.hasTvDetails
                      ? OverviewSectionWidget(
                          overview: controller.tvDetails.overview)
                      : Center());
            },
          ),
          Observer(
            name: 'tvGenres',
            builder: (_) {
              return SliverToBoxAdapter(
                child: controller.hasTvDetails
                    ? GenresSectionWidget(genres: controller.tvDetails.genres)
                    : Center(),
              );
            },
          ),
          Observer(
            name: 'tvCast',
            builder: (_) {
              return SliverToBoxAdapter(
                child: controller.hasCredits
                    ? CastSectionWidget(cast: controller.credits.cast)
                    : Center(child: CircularProgressIndicator()),
              );
            },
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 40,
              child: TabBar(
                indicator: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.yellow, width: 3),
                  ),
                ),
                isScrollable: true,
                labelColor: Colors.yellow,
                unselectedLabelColor: Colors.grey,
                controller: controller.tabController,
                tabs: controller.tabs,
              ),
            ),
          ),
        ];
      }, body: Observer(builder: (_) {
        return controller.hasSeasonDetails
            ? Container(
                child: Observer(
                  builder: (_) {
                    return TabBarView(
                      controller: controller.tabController,
                      children: [
                        ListView(
                          children: [
                            Observer(builder: (_) {
                              return Container(
                                child: controller.hasTvDetails
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          DropdownButton(
                                            focusColor: Colors.blue,
                                            value: controller.currentSeason,
                                            icon: Icon(Icons.arrow_drop_down),
                                            iconSize: 20,
                                            elevation: 16,
                                            style:
                                                TextStyle(color: Colors.grey),
                                            dropdownColor: Colors.white,
                                            items: controller.seasonNames
                                                .map<DropdownMenuItem<String>>(
                                              (String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              },
                                            ).toList(),
                                            onChanged:
                                                controller.getCurrentSeasonInfo,
                                          )
                                        ],
                                      )
                                    : Center(),
                              );
                            }),
                            EpisodesListWidget(
                                episodes: controller.seasonDetails.episodes)
                          ],
                        ),
                        Observer(
                          builder: (_) {
                            return controller.hasVideos
                                ? ListView.builder(
                                    itemCount: controller.videos.results
                                        .where((element) =>
                                            element.site == 'YouTube')
                                        .length,
                                    itemBuilder: (_, index) {
                                      return TrailerCardWidget(video: controller.videos.results[index],);
                                    },
                                  )
                                : Center(child: CircularProgressIndicator());
                          },
                        ),
                        Observer(
                          name: 'tvSimilarResults',
                          builder: (_) {
                            return controller.hasSimilarTv
                                ? SimilarGridWidget(
                                    results: controller.similarTv.results)
                                : Center(child: CircularProgressIndicator());
                          },
                        ),
                      ],
                    );
                  },
                ),
              )
            : Center(child: CircularProgressIndicator());
      })),
    );
  }
}
