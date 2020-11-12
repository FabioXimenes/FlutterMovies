import 'package:flutter_movie_app/app/shared/models/credits_model.dart';
import 'package:flutter_movie_app/app/shared/models/movie_details_model.dart';
import 'package:flutter_movie_app/app/shared/repositories/movie_repository.dart';
import 'package:flutter_movie_app/app/shared/models/movie_response_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'movie_details_controller.g.dart';

@Injectable()
class MovieDetailsController = _MovieDetailsControllerBase
    with _$MovieDetailsController;

abstract class _MovieDetailsControllerBase with Store {
  final MovieRepository _repository = Modular.get();

  @observable
  MovieDetailsModel details;

  @computed
  String get duration {
    if (details != null && details.runtime ~/ 60 > 0) {
      return '   |   ${details.runtime ~/ 60}h${details.runtime % 60}min';
    } else if (details != null) {
      return '   |   ${details.runtime % 60}min';
    } else {
      return '';
    }
  }

  @observable
  CreditsModel credits;

  @observable
  MovieResponseModel similarMovies;

  @observable
  bool hasDetails = false;

  @observable
  bool hasCredits = false;

  @observable
  bool hasSimilarMovies = false;

  getMovieDetails(int id) async {
    details = await _repository.getMovieDetails(id);
    hasDetails = true;
  }

  getMovieCredits(int id) async {
    credits = await _repository.getMovieCredits(id);
    hasCredits = true;
  }

  getSimilarMovies(int id) async {
    similarMovies = await _repository.getSimilarMovies(id);
    hasSimilarMovies = true;
  }
}
