// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $MovieDetailsController = BindInject(
  (i) => MovieDetailsController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieDetailsController on _MovieDetailsControllerBase, Store {
  Computed<String> _$durationComputed;

  @override
  String get duration =>
      (_$durationComputed ??= Computed<String>(() => super.duration,
              name: '_MovieDetailsControllerBase.duration'))
          .value;

  final _$detailsAtom = Atom(name: '_MovieDetailsControllerBase.details');

  @override
  MovieDetailsModel get details {
    _$detailsAtom.reportRead();
    return super.details;
  }

  @override
  set details(MovieDetailsModel value) {
    _$detailsAtom.reportWrite(value, super.details, () {
      super.details = value;
    });
  }

  final _$creditsAtom = Atom(name: '_MovieDetailsControllerBase.credits');

  @override
  CreditsModel get credits {
    _$creditsAtom.reportRead();
    return super.credits;
  }

  @override
  set credits(CreditsModel value) {
    _$creditsAtom.reportWrite(value, super.credits, () {
      super.credits = value;
    });
  }

  final _$similarMoviesAtom =
      Atom(name: '_MovieDetailsControllerBase.similarMovies');

  @override
  MovieResponseModel get similarMovies {
    _$similarMoviesAtom.reportRead();
    return super.similarMovies;
  }

  @override
  set similarMovies(MovieResponseModel value) {
    _$similarMoviesAtom.reportWrite(value, super.similarMovies, () {
      super.similarMovies = value;
    });
  }

  final _$trailerAtom = Atom(name: '_MovieDetailsControllerBase.trailer');

  @override
  VideoModel get trailer {
    _$trailerAtom.reportRead();
    return super.trailer;
  }

  @override
  set trailer(VideoModel value) {
    _$trailerAtom.reportWrite(value, super.trailer, () {
      super.trailer = value;
    });
  }

  final _$hasDetailsAtom = Atom(name: '_MovieDetailsControllerBase.hasDetails');

  @override
  bool get hasDetails {
    _$hasDetailsAtom.reportRead();
    return super.hasDetails;
  }

  @override
  set hasDetails(bool value) {
    _$hasDetailsAtom.reportWrite(value, super.hasDetails, () {
      super.hasDetails = value;
    });
  }

  final _$hasCreditsAtom = Atom(name: '_MovieDetailsControllerBase.hasCredits');

  @override
  bool get hasCredits {
    _$hasCreditsAtom.reportRead();
    return super.hasCredits;
  }

  @override
  set hasCredits(bool value) {
    _$hasCreditsAtom.reportWrite(value, super.hasCredits, () {
      super.hasCredits = value;
    });
  }

  final _$hasTrailerAtom = Atom(name: '_MovieDetailsControllerBase.hasTrailer');

  @override
  bool get hasTrailer {
    _$hasTrailerAtom.reportRead();
    return super.hasTrailer;
  }

  @override
  set hasTrailer(bool value) {
    _$hasTrailerAtom.reportWrite(value, super.hasTrailer, () {
      super.hasTrailer = value;
    });
  }

  final _$hasSimilarMoviesAtom =
      Atom(name: '_MovieDetailsControllerBase.hasSimilarMovies');

  @override
  bool get hasSimilarMovies {
    _$hasSimilarMoviesAtom.reportRead();
    return super.hasSimilarMovies;
  }

  @override
  set hasSimilarMovies(bool value) {
    _$hasSimilarMoviesAtom.reportWrite(value, super.hasSimilarMovies, () {
      super.hasSimilarMovies = value;
    });
  }

  @override
  String toString() {
    return '''
details: ${details},
credits: ${credits},
similarMovies: ${similarMovies},
trailer: ${trailer},
hasDetails: ${hasDetails},
hasCredits: ${hasCredits},
hasTrailer: ${hasTrailer},
hasSimilarMovies: ${hasSimilarMovies},
duration: ${duration}
    ''';
  }
}
