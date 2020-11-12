import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/models/movie_model.dart';

class SimilarPosterWidget extends StatelessWidget {
  final dynamic similar;

  const SimilarPosterWidget({Key key, this.similar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (similar is MovieModel){
          Modular.to.pushNamed(AppRoutes.movieId(similar.id));
        } else{
          Modular.to.pushNamed(AppRoutes.tvId(similar.id));
        }
      },
      child: Container(
        height: 180,
        width: 120,
        margin: EdgeInsets.symmetric(horizontal: 1, vertical: 2.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(ApiUrls.image(similar.poster_path)))),
      ),
    );
  }
}
