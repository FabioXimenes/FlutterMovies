import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_movie_app/app/shared/widgets/similar_poster_widget.dart';
import 'genre_controller.dart';

class GenrePage extends StatefulWidget {
  final String genreId;
  final String genreName;
  const GenrePage({Key key, this.genreId, this.genreName}) : super(key: key);

  @override
  _GenrePageState createState() => _GenrePageState();
}

class _GenrePageState extends ModularState<GenrePage, GenreController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    controller.discoverMoviesByGenre(int.parse(widget.genreId));
    controller.discoverTvByGenre(int.parse(widget.genreId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicator: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.yellow, width: 3),
                ),
              ),
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.yellow,
              tabs: controller.tabs,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            title: Text(widget.genreName),
            centerTitle: true,
          ),
          body: Observer(builder: (_) {
            return TabBarView(
              children: [
                Observer(builder: (_) {
                  return controller.hasMovies
                      ? GridView.count(
                          crossAxisCount: 3,
                          childAspectRatio: 0.7,
                          children: controller.movies.results
                              .where((element) => element.poster_path != null)
                              .map((movie) =>
                                  SimilarPosterWidget(similar: movie))
                              .toList(),
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                }),
                Observer(builder: (_) {
                  return controller.hasTv
                      ? GridView.count(
                          crossAxisCount: 3,
                          childAspectRatio: 0.7,
                          children: controller.tv.results
                              .where((element) => element.poster_path != null)
                              .map((tv) => SimilarPosterWidget(similar: tv))
                              .toList(),
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                }),
              ],
            );
          })),
    );
  }
}
