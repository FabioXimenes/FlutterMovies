import 'dart:async';

import 'package:flutter_movie_app/app/shared/models/generic_response_model.dart';
import 'package:flutter_movie_app/app/shared/models/movie_response_model.dart';
import 'package:flutter_movie_app/app/shared/models/tv_response_model.dart';
import 'package:flutter_movie_app/app/shared/repositories/movie_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_movie_app/app/shared/models/genre_response_model.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final MovieRepository _repository = Modular.get();

  @observable
  MovieResponseModel topRatedMovies;

  @observable
  MovieResponseModel nowPlayingMovies;

  @observable
  MovieResponseModel trendingMovies;

  @observable
  TvResponseModel trendingTv;

  @observable
  GenreResponseModel movieGenreList;

  @observable
  GenreResponseModel tvGenreList;

  @observable
  bool hasPlayingMovies = false;

  @observable
  bool hasTrendingMovies = false;

  @observable
  bool hasTrendingTv = false;

  @observable
  bool hasTopRatedMovies = false;

  @observable
  bool hasMovieGenreList = false;

  @observable
  bool hasTvGenreList = false;

  @observable
  int currentPage = 0;

  @observable
  String movieTimeWindow = 'day';

  @observable
  String tvTimeWindow = 'day';

  @observable
  ObservableList<bool> movieTimeWindowSelected = [true, false].asObservable();

  @observable
  ObservableList<bool> tvTimeWindowSelected = [true, false].asObservable();

  @action
  int setPage(value) => currentPage = value;

  @action
  void setMovieTimeWindow(index) {
    movieTimeWindowSelected.forEach((element) {
      if (element == false && movieTimeWindowSelected[index] == false) {
        for (int i = 0; i < movieTimeWindowSelected.length; i++) {
          movieTimeWindowSelected[i] = !movieTimeWindowSelected[i];
        }
        movieTimeWindow = getTimeWindow(movieTimeWindowSelected);
        hasTrendingMovies = false;
        getTrendingMovies();
      }
    });
  }

  String getTimeWindow(List<bool> isSelected) {
    return isSelected.indexOf(true) == 0 ? 'day' : 'week';
  }

  @action
  void setTvTimeWindow(index) {
    tvTimeWindowSelected.forEach((element) {
      if (element == false && tvTimeWindowSelected[index] == false) {
        for (int i = 0; i < tvTimeWindowSelected.length; i++) {
          tvTimeWindowSelected[i] = !tvTimeWindowSelected[i];
        }
        tvTimeWindow = getTimeWindow(tvTimeWindowSelected);
        hasTrendingTv = false;
        getTrendingTv();
      }
    });
  }

  @action
  getNowPlayingMovies() async {
    nowPlayingMovies = await _repository.getNowPlayingMovies();
    hasPlayingMovies = true;
  }

  @action
  getTrendingMovies() async {
    trendingMovies = await _repository.getTrendingMovies(movieTimeWindow);
    hasTrendingMovies = true;
  }

  @action
  getTrendingTv() async {
    trendingTv = await _repository.getTrendingTv(tvTimeWindow);
    hasTrendingTv = true;
  }

  @action
  getTopRatedMovies() async {
    topRatedMovies = await _repository.getTopRatedMovies();
    hasTopRatedMovies = true;
  }

  @action
  getMovieGenreList() async {
    movieGenreList = await _repository.getMovieGenreList();
    hasMovieGenreList = true;
  }

  @action
  getTvGenreList() async {
    tvGenreList = await _repository.getTvGenreList();
    hasTvGenreList = true;
  }

  @observable
  GenericResponseModel genericResponse;

  @observable
  List<String> suggestions = <String>[];

  @observable
  bool hasSuggestions = false;

  @action
  getSearchSuggestions(String query) async {
    hasSuggestions = false;
    genericResponse = await _repository.search(query);
    suggestions = genericResponse.results
        .map((e) => e.name != null ? e.name : e.title)
        .toList();

    hasSuggestions = true;
  }
}
