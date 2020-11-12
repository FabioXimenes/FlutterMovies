import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/models/movie_model.dart';
import 'package:flutter_movie_app/app/shared/models/tv_model.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductionCardWidget extends StatelessWidget {
  final dynamic production;

  const ProductionCardWidget({Key key, this.production}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if (production is MovieModel){
          Modular.to.pushNamed(AppRoutes.movieId(production.id));
        } else if (production is TvModel){
          Modular.to.pushNamed(AppRoutes.tvId(production.id));
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 8, bottom: 5),
            height: 160,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(ApiUrls.image(production.poster_path)),
              ),
            ),
          ),
          // Container(
          //   width: 120,
          //   padding: EdgeInsets.only(left: 5.0),
          //   child: Text(
          //     '${movie.title}',
          //     maxLines: 2,
          //     overflow: TextOverflow.clip,
          //     style: TextStyle(
          //         height: 1.4,
          //         color: Colors.white,
          //         fontSize: 14,
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),
          Container(
            padding: EdgeInsets.only(left: 5.0),
            child: Row(
              children: [
                SmoothStarRating(
                  rating: production.vote_average / 2.0,
                  isReadOnly: true,
                  color: Colors.yellow,
                  allowHalfRating: true,
                  filledIconData: Icons.star,
                  halfFilledIconData: Icons.star_half,
                  defaultIconData: Icons.star_border,
                  size: 13,
                  borderColor: Colors.white,
                ),
                SizedBox(width: 5),
                Text(
                  production.vote_average.toString(),
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
