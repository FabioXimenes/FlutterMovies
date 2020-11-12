import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/models/movie_model.dart';

class MoviePosterWidget extends StatelessWidget {
  final MovieModel movie;

  const MoviePosterWidget({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Modular.to.pushNamed(AppRoutes.movieId(movie.id));
      },
          child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(ApiUrls.image(movie.backdrop_path)),
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 8,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                movie.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, 1),
                        blurRadius: 10.0
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
