// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$topRatedMoviesAtom = Atom(name: '_HomeControllerBase.topRatedMovies');

  @override
  MovieResponseModel get topRatedMovies {
    _$topRatedMoviesAtom.reportRead();
    return super.topRatedMovies;
  }

  @override
  set topRatedMovies(MovieResponseModel value) {
    _$topRatedMoviesAtom.reportWrite(value, super.topRatedMovies, () {
      super.topRatedMovies = value;
    });
  }

  final _$nowPlayingMoviesAtom =
      Atom(name: '_HomeControllerBase.nowPlayingMovies');

  @override
  MovieResponseModel get nowPlayingMovies {
    _$nowPlayingMoviesAtom.reportRead();
    return super.nowPlayingMovies;
  }

  @override
  set nowPlayingMovies(MovieResponseModel value) {
    _$nowPlayingMoviesAtom.reportWrite(value, super.nowPlayingMovies, () {
      super.nowPlayingMovies = value;
    });
  }

  final _$trendingMoviesAtom = Atom(name: '_HomeControllerBase.trendingMovies');

  @override
  MovieResponseModel get trendingMovies {
    _$trendingMoviesAtom.reportRead();
    return super.trendingMovies;
  }

  @override
  set trendingMovies(MovieResponseModel value) {
    _$trendingMoviesAtom.reportWrite(value, super.trendingMovies, () {
      super.trendingMovies = value;
    });
  }

  final _$trendingTvAtom = Atom(name: '_HomeControllerBase.trendingTv');

  @override
  TvResponseModel get trendingTv {
    _$trendingTvAtom.reportRead();
    return super.trendingTv;
  }

  @override
  set trendingTv(TvResponseModel value) {
    _$trendingTvAtom.reportWrite(value, super.trendingTv, () {
      super.trendingTv = value;
    });
  }

  final _$movieGenreListAtom = Atom(name: '_HomeControllerBase.movieGenreList');

  @override
  GenreResponseModel get movieGenreList {
    _$movieGenreListAtom.reportRead();
    return super.movieGenreList;
  }

  @override
  set movieGenreList(GenreResponseModel value) {
    _$movieGenreListAtom.reportWrite(value, super.movieGenreList, () {
      super.movieGenreList = value;
    });
  }

  final _$tvGenreListAtom = Atom(name: '_HomeControllerBase.tvGenreList');

  @override
  GenreResponseModel get tvGenreList {
    _$tvGenreListAtom.reportRead();
    return super.tvGenreList;
  }

  @override
  set tvGenreList(GenreResponseModel value) {
    _$tvGenreListAtom.reportWrite(value, super.tvGenreList, () {
      super.tvGenreList = value;
    });
  }

  final _$hasPlayingMoviesAtom =
      Atom(name: '_HomeControllerBase.hasPlayingMovies');

  @override
  bool get hasPlayingMovies {
    _$hasPlayingMoviesAtom.reportRead();
    return super.hasPlayingMovies;
  }

  @override
  set hasPlayingMovies(bool value) {
    _$hasPlayingMoviesAtom.reportWrite(value, super.hasPlayingMovies, () {
      super.hasPlayingMovies = value;
    });
  }

  final _$hasTrendingMoviesAtom =
      Atom(name: '_HomeControllerBase.hasTrendingMovies');

  @override
  bool get hasTrendingMovies {
    _$hasTrendingMoviesAtom.reportRead();
    return super.hasTrendingMovies;
  }

  @override
  set hasTrendingMovies(bool value) {
    _$hasTrendingMoviesAtom.reportWrite(value, super.hasTrendingMovies, () {
      super.hasTrendingMovies = value;
    });
  }

  final _$hasTrendingTvAtom = Atom(name: '_HomeControllerBase.hasTrendingTv');

  @override
  bool get hasTrendingTv {
    _$hasTrendingTvAtom.reportRead();
    return super.hasTrendingTv;
  }

  @override
  set hasTrendingTv(bool value) {
    _$hasTrendingTvAtom.reportWrite(value, super.hasTrendingTv, () {
      super.hasTrendingTv = value;
    });
  }

  final _$hasTopRatedMoviesAtom =
      Atom(name: '_HomeControllerBase.hasTopRatedMovies');

  @override
  bool get hasTopRatedMovies {
    _$hasTopRatedMoviesAtom.reportRead();
    return super.hasTopRatedMovies;
  }

  @override
  set hasTopRatedMovies(bool value) {
    _$hasTopRatedMoviesAtom.reportWrite(value, super.hasTopRatedMovies, () {
      super.hasTopRatedMovies = value;
    });
  }

  final _$hasMovieGenreListAtom =
      Atom(name: '_HomeControllerBase.hasMovieGenreList');

  @override
  bool get hasMovieGenreList {
    _$hasMovieGenreListAtom.reportRead();
    return super.hasMovieGenreList;
  }

  @override
  set hasMovieGenreList(bool value) {
    _$hasMovieGenreListAtom.reportWrite(value, super.hasMovieGenreList, () {
      super.hasMovieGenreList = value;
    });
  }

  final _$hasTvGenreListAtom = Atom(name: '_HomeControllerBase.hasTvGenreList');

  @override
  bool get hasTvGenreList {
    _$hasTvGenreListAtom.reportRead();
    return super.hasTvGenreList;
  }

  @override
  set hasTvGenreList(bool value) {
    _$hasTvGenreListAtom.reportWrite(value, super.hasTvGenreList, () {
      super.hasTvGenreList = value;
    });
  }

  final _$currentPageAtom = Atom(name: '_HomeControllerBase.currentPage');

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  final _$movieTimeWindowAtom =
      Atom(name: '_HomeControllerBase.movieTimeWindow');

  @override
  String get movieTimeWindow {
    _$movieTimeWindowAtom.reportRead();
    return super.movieTimeWindow;
  }

  @override
  set movieTimeWindow(String value) {
    _$movieTimeWindowAtom.reportWrite(value, super.movieTimeWindow, () {
      super.movieTimeWindow = value;
    });
  }

  final _$tvTimeWindowAtom = Atom(name: '_HomeControllerBase.tvTimeWindow');

  @override
  String get tvTimeWindow {
    _$tvTimeWindowAtom.reportRead();
    return super.tvTimeWindow;
  }

  @override
  set tvTimeWindow(String value) {
    _$tvTimeWindowAtom.reportWrite(value, super.tvTimeWindow, () {
      super.tvTimeWindow = value;
    });
  }

  final _$movieTimeWindowSelectedAtom =
      Atom(name: '_HomeControllerBase.movieTimeWindowSelected');

  @override
  ObservableList<bool> get movieTimeWindowSelected {
    _$movieTimeWindowSelectedAtom.reportRead();
    return super.movieTimeWindowSelected;
  }

  @override
  set movieTimeWindowSelected(ObservableList<bool> value) {
    _$movieTimeWindowSelectedAtom
        .reportWrite(value, super.movieTimeWindowSelected, () {
      super.movieTimeWindowSelected = value;
    });
  }

  final _$tvTimeWindowSelectedAtom =
      Atom(name: '_HomeControllerBase.tvTimeWindowSelected');

  @override
  ObservableList<bool> get tvTimeWindowSelected {
    _$tvTimeWindowSelectedAtom.reportRead();
    return super.tvTimeWindowSelected;
  }

  @override
  set tvTimeWindowSelected(ObservableList<bool> value) {
    _$tvTimeWindowSelectedAtom.reportWrite(value, super.tvTimeWindowSelected,
        () {
      super.tvTimeWindowSelected = value;
    });
  }

  final _$genericResponseAtom =
      Atom(name: '_HomeControllerBase.genericResponse');

  @override
  GenericResponseModel get genericResponse {
    _$genericResponseAtom.reportRead();
    return super.genericResponse;
  }

  @override
  set genericResponse(GenericResponseModel value) {
    _$genericResponseAtom.reportWrite(value, super.genericResponse, () {
      super.genericResponse = value;
    });
  }

  final _$suggestionsAtom = Atom(name: '_HomeControllerBase.suggestions');

  @override
  List<String> get suggestions {
    _$suggestionsAtom.reportRead();
    return super.suggestions;
  }

  @override
  set suggestions(List<String> value) {
    _$suggestionsAtom.reportWrite(value, super.suggestions, () {
      super.suggestions = value;
    });
  }

  final _$hasSuggestionsAtom = Atom(name: '_HomeControllerBase.hasSuggestions');

  @override
  bool get hasSuggestions {
    _$hasSuggestionsAtom.reportRead();
    return super.hasSuggestions;
  }

  @override
  set hasSuggestions(bool value) {
    _$hasSuggestionsAtom.reportWrite(value, super.hasSuggestions, () {
      super.hasSuggestions = value;
    });
  }

  final _$getNowPlayingMoviesAsyncAction =
      AsyncAction('_HomeControllerBase.getNowPlayingMovies');

  @override
  Future getNowPlayingMovies() {
    return _$getNowPlayingMoviesAsyncAction
        .run(() => super.getNowPlayingMovies());
  }

  final _$getTrendingMoviesAsyncAction =
      AsyncAction('_HomeControllerBase.getTrendingMovies');

  @override
  Future getTrendingMovies() {
    return _$getTrendingMoviesAsyncAction.run(() => super.getTrendingMovies());
  }

  final _$getTrendingTvAsyncAction =
      AsyncAction('_HomeControllerBase.getTrendingTv');

  @override
  Future getTrendingTv() {
    return _$getTrendingTvAsyncAction.run(() => super.getTrendingTv());
  }

  final _$getTopRatedMoviesAsyncAction =
      AsyncAction('_HomeControllerBase.getTopRatedMovies');

  @override
  Future getTopRatedMovies() {
    return _$getTopRatedMoviesAsyncAction.run(() => super.getTopRatedMovies());
  }

  final _$getMovieGenreListAsyncAction =
      AsyncAction('_HomeControllerBase.getMovieGenreList');

  @override
  Future getMovieGenreList() {
    return _$getMovieGenreListAsyncAction.run(() => super.getMovieGenreList());
  }

  final _$getTvGenreListAsyncAction =
      AsyncAction('_HomeControllerBase.getTvGenreList');

  @override
  Future getTvGenreList() {
    return _$getTvGenreListAsyncAction.run(() => super.getTvGenreList());
  }

  final _$getSearchSuggestionsAsyncAction =
      AsyncAction('_HomeControllerBase.getSearchSuggestions');

  @override
  Future getSearchSuggestions(String query) {
    return _$getSearchSuggestionsAsyncAction
        .run(() => super.getSearchSuggestions(query));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  int setPage(dynamic value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setPage');
    try {
      return super.setPage(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMovieTimeWindow(dynamic index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setMovieTimeWindow');
    try {
      return super.setMovieTimeWindow(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTvTimeWindow(dynamic index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setTvTimeWindow');
    try {
      return super.setTvTimeWindow(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
topRatedMovies: ${topRatedMovies},
nowPlayingMovies: ${nowPlayingMovies},
trendingMovies: ${trendingMovies},
trendingTv: ${trendingTv},
movieGenreList: ${movieGenreList},
tvGenreList: ${tvGenreList},
hasPlayingMovies: ${hasPlayingMovies},
hasTrendingMovies: ${hasTrendingMovies},
hasTrendingTv: ${hasTrendingTv},
hasTopRatedMovies: ${hasTopRatedMovies},
hasMovieGenreList: ${hasMovieGenreList},
hasTvGenreList: ${hasTvGenreList},
currentPage: ${currentPage},
movieTimeWindow: ${movieTimeWindow},
tvTimeWindow: ${tvTimeWindow},
movieTimeWindowSelected: ${movieTimeWindowSelected},
tvTimeWindowSelected: ${tvTimeWindowSelected},
genericResponse: ${genericResponse},
suggestions: ${suggestions},
hasSuggestions: ${hasSuggestions}
    ''';
  }
}
