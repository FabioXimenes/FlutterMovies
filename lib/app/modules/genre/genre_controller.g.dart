// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $GenreController = BindInject(
  (i) => GenreController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GenreController on _GenreControllerBase, Store {
  final _$moviesAtom = Atom(name: '_GenreControllerBase.movies');

  @override
  MovieResponseModel get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(MovieResponseModel value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  final _$tvAtom = Atom(name: '_GenreControllerBase.tv');

  @override
  TvResponseModel get tv {
    _$tvAtom.reportRead();
    return super.tv;
  }

  @override
  set tv(TvResponseModel value) {
    _$tvAtom.reportWrite(value, super.tv, () {
      super.tv = value;
    });
  }

  final _$hasMoviesAtom = Atom(name: '_GenreControllerBase.hasMovies');

  @override
  bool get hasMovies {
    _$hasMoviesAtom.reportRead();
    return super.hasMovies;
  }

  @override
  set hasMovies(bool value) {
    _$hasMoviesAtom.reportWrite(value, super.hasMovies, () {
      super.hasMovies = value;
    });
  }

  final _$hasTvAtom = Atom(name: '_GenreControllerBase.hasTv');

  @override
  bool get hasTv {
    _$hasTvAtom.reportRead();
    return super.hasTv;
  }

  @override
  set hasTv(bool value) {
    _$hasTvAtom.reportWrite(value, super.hasTv, () {
      super.hasTv = value;
    });
  }

  final _$discoverMoviesByGenreAsyncAction =
      AsyncAction('_GenreControllerBase.discoverMoviesByGenre');

  @override
  Future discoverMoviesByGenre(int id) {
    return _$discoverMoviesByGenreAsyncAction
        .run(() => super.discoverMoviesByGenre(id));
  }

  final _$discoverTvByGenreAsyncAction =
      AsyncAction('_GenreControllerBase.discoverTvByGenre');

  @override
  Future discoverTvByGenre(int id) {
    return _$discoverTvByGenreAsyncAction
        .run(() => super.discoverTvByGenre(id));
  }

  final _$_GenreControllerBaseActionController =
      ActionController(name: '_GenreControllerBase');

  @override
  void handleTabSelection() {
    final _$actionInfo = _$_GenreControllerBaseActionController.startAction(
        name: '_GenreControllerBase.handleTabSelection');
    try {
      return super.handleTabSelection();
    } finally {
      _$_GenreControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movies: ${movies},
tv: ${tv},
hasMovies: ${hasMovies},
hasTv: ${hasTv}
    ''';
  }
}
