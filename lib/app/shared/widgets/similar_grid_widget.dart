import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/shared/models/tv_model.dart';
import 'package:flutter_movie_app/app/shared/widgets/similar_poster_widget.dart';

class SimilarGridWidget extends StatelessWidget {
  final List<dynamic> results;

  const SimilarGridWidget({Key key, this.results}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return results.length == 0
        ? results is List<TvModel>
            ? Center(
                child: Text(
                  'No similar movies found.',
                  style: TextStyle(color: Colors.grey, height: 5.0),
                ),
              )
            : SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    'No similar movies found.',
                    style: TextStyle(color: Colors.grey, height: 5.0),
                  ),
                ),
              )
        : results[0] is TvModel
            ? GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 0.7,
                children: results
                    .where((element) => element.poster_path != null)
                    .map((element) => SimilarPosterWidget(similar: element))
                    .toList()
                    .cast<Widget>(),
              )
            : SliverGrid.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 0.7,
                children: results
                    .where((element) => element.poster_path != null)
                    .map((element) => SimilarPosterWidget(similar: element))
                    .toList()
                    .cast<Widget>(),
              );
  }
}
