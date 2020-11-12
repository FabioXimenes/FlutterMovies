import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/widgets/cast_section_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/genres_section_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/overview_section_widget.dart';
import 'package:flutter_movie_app/app/shared/widgets/similar_grid_widget.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'movie_details_controller.dart';

class MovieDetailsPage extends StatefulWidget {
  final String movieId;
  const MovieDetailsPage({Key key, this.movieId})
      : super(key: key);

  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState
    extends ModularState<MovieDetailsPage, MovieDetailsController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    controller.getMovieDetails(int.parse(widget.movieId));
    controller.getMovieCredits(int.parse(widget.movieId));
    controller.getSimilarMovies(int.parse(widget.movieId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        Observer(
          builder: (_) {
            return SliverAppBar(
              expandedHeight: _size.height * 0.30,
              flexibleSpace: FlexibleSpaceBar(
                background: controller.hasDetails
                    ? controller.details.backdrop_path == null
                        ? Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.broken_image,
                                  color: Colors.grey,
                                  size: 50,
                                ),
                                Text(
                                  'Image not found',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                )
                              ],
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(ApiUrls.image(
                                    controller.details.backdrop_path)),
                              ),
                            ),
                          )
                    : Center(child: CircularProgressIndicator()),
              ),
            );
          },
        ),
        Observer(builder: (_) {
          return SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              width: _size.width,
              child: controller.hasDetails
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.details.title,
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
                              rating: controller.details.vote_average / 2,
                              isReadOnly: true,
                              size: 13,
                            ),
                            SizedBox(width: 5),
                            Text(
                              controller.details.vote_average.toString(),
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              controller.duration,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  : Center(),
            ),
          );
        }),
        Observer(
          builder: (_) {
            return SliverToBoxAdapter(
              child: controller.hasDetails
                  ? OverviewSectionWidget(overview: controller.details.overview)
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            );
          },
        ),
        Observer(
          name: 'Genres',
          builder: (_) {
            return SliverToBoxAdapter(
              child: controller.hasDetails
                  ? GenresSectionWidget(genres: controller.details.genres)
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            );
          },
        ),
        Observer(
            name: 'Cast',
            builder: (_) {
              return SliverToBoxAdapter(
                child: controller.hasCredits
                    ? CastSectionWidget(
                        cast: controller.credits.cast,
                      )
                    : Center(
                        child: CircularProgressIndicator(),
                      ),
              );
            }),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Similar Movies',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        ),
        Observer(
          name: 'similarMoviesResults',
          builder: (_) {
            return controller.hasSimilarMovies
                ? SimilarGridWidget(results: controller.similarMovies.results)
                : SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()));
          },
        ),
      ],
    ));
  }
}
