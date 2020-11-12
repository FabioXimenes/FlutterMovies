// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_details_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $TvDetailsController = BindInject(
  (i) => TvDetailsController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TvDetailsController on _TvDetailsControllerBase, Store {
  Computed<String> _$seasonsComputed;

  @override
  String get seasons =>
      (_$seasonsComputed ??= Computed<String>(() => super.seasons,
              name: '_TvDetailsControllerBase.seasons'))
          .value;
  Computed<List<String>> _$seasonNamesComputed;

  @override
  List<String> get seasonNames =>
      (_$seasonNamesComputed ??= Computed<List<String>>(() => super.seasonNames,
              name: '_TvDetailsControllerBase.seasonNames'))
          .value;

  final _$tvDetailsAtom = Atom(name: '_TvDetailsControllerBase.tvDetails');

  @override
  TvDetailsModel get tvDetails {
    _$tvDetailsAtom.reportRead();
    return super.tvDetails;
  }

  @override
  set tvDetails(TvDetailsModel value) {
    _$tvDetailsAtom.reportWrite(value, super.tvDetails, () {
      super.tvDetails = value;
    });
  }

  final _$currentSeasonAtom =
      Atom(name: '_TvDetailsControllerBase.currentSeason');

  @override
  String get currentSeason {
    _$currentSeasonAtom.reportRead();
    return super.currentSeason;
  }

  @override
  set currentSeason(String value) {
    _$currentSeasonAtom.reportWrite(value, super.currentSeason, () {
      super.currentSeason = value;
    });
  }

  final _$creditsAtom = Atom(name: '_TvDetailsControllerBase.credits');

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

  final _$seasonDetailsAtom =
      Atom(name: '_TvDetailsControllerBase.seasonDetails');

  @override
  TvSeasonDetailsModel get seasonDetails {
    _$seasonDetailsAtom.reportRead();
    return super.seasonDetails;
  }

  @override
  set seasonDetails(TvSeasonDetailsModel value) {
    _$seasonDetailsAtom.reportWrite(value, super.seasonDetails, () {
      super.seasonDetails = value;
    });
  }

  final _$videosAtom = Atom(name: '_TvDetailsControllerBase.videos');

  @override
  VideoResponseModel get videos {
    _$videosAtom.reportRead();
    return super.videos;
  }

  @override
  set videos(VideoResponseModel value) {
    _$videosAtom.reportWrite(value, super.videos, () {
      super.videos = value;
    });
  }

  final _$similarTvAtom = Atom(name: '_TvDetailsControllerBase.similarTv');

  @override
  TvResponseModel get similarTv {
    _$similarTvAtom.reportRead();
    return super.similarTv;
  }

  @override
  set similarTv(TvResponseModel value) {
    _$similarTvAtom.reportWrite(value, super.similarTv, () {
      super.similarTv = value;
    });
  }

  final _$hasTvDetailsAtom =
      Atom(name: '_TvDetailsControllerBase.hasTvDetails');

  @override
  bool get hasTvDetails {
    _$hasTvDetailsAtom.reportRead();
    return super.hasTvDetails;
  }

  @override
  set hasTvDetails(bool value) {
    _$hasTvDetailsAtom.reportWrite(value, super.hasTvDetails, () {
      super.hasTvDetails = value;
    });
  }

  final _$hasCreditsAtom = Atom(name: '_TvDetailsControllerBase.hasCredits');

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

  final _$hasSeasonDetailsAtom =
      Atom(name: '_TvDetailsControllerBase.hasSeasonDetails');

  @override
  bool get hasSeasonDetails {
    _$hasSeasonDetailsAtom.reportRead();
    return super.hasSeasonDetails;
  }

  @override
  set hasSeasonDetails(bool value) {
    _$hasSeasonDetailsAtom.reportWrite(value, super.hasSeasonDetails, () {
      super.hasSeasonDetails = value;
    });
  }

  final _$hasVideosAtom = Atom(name: '_TvDetailsControllerBase.hasVideos');

  @override
  bool get hasVideos {
    _$hasVideosAtom.reportRead();
    return super.hasVideos;
  }

  @override
  set hasVideos(bool value) {
    _$hasVideosAtom.reportWrite(value, super.hasVideos, () {
      super.hasVideos = value;
    });
  }

  final _$hasSimilarTvAtom =
      Atom(name: '_TvDetailsControllerBase.hasSimilarTv');

  @override
  bool get hasSimilarTv {
    _$hasSimilarTvAtom.reportRead();
    return super.hasSimilarTv;
  }

  @override
  set hasSimilarTv(bool value) {
    _$hasSimilarTvAtom.reportWrite(value, super.hasSimilarTv, () {
      super.hasSimilarTv = value;
    });
  }

  final _$getTvDetailsAsyncAction =
      AsyncAction('_TvDetailsControllerBase.getTvDetails');

  @override
  Future<dynamic> getTvDetails(int id) {
    return _$getTvDetailsAsyncAction.run(() => super.getTvDetails(id));
  }

  final _$getTvCreditsAsyncAction =
      AsyncAction('_TvDetailsControllerBase.getTvCredits');

  @override
  Future<dynamic> getTvCredits(int id) {
    return _$getTvCreditsAsyncAction.run(() => super.getTvCredits(id));
  }

  final _$getTvSeasonDetailsAsyncAction =
      AsyncAction('_TvDetailsControllerBase.getTvSeasonDetails');

  @override
  Future<dynamic> getTvSeasonDetails(int id, int season) {
    return _$getTvSeasonDetailsAsyncAction
        .run(() => super.getTvSeasonDetails(id, season));
  }

  final _$getSimilarTvAsyncAction =
      AsyncAction('_TvDetailsControllerBase.getSimilarTv');

  @override
  Future<dynamic> getSimilarTv(int id) {
    return _$getSimilarTvAsyncAction.run(() => super.getSimilarTv(id));
  }

  final _$getVideosAsyncAction =
      AsyncAction('_TvDetailsControllerBase.getVideos');

  @override
  Future<dynamic> getVideos(int id) {
    return _$getVideosAsyncAction.run(() => super.getVideos(id));
  }

  final _$_TvDetailsControllerBaseActionController =
      ActionController(name: '_TvDetailsControllerBase');

  @override
  void getCurrentSeasonInfo(String value) {
    final _$actionInfo = _$_TvDetailsControllerBaseActionController.startAction(
        name: '_TvDetailsControllerBase.getCurrentSeasonInfo');
    try {
      return super.getCurrentSeasonInfo(value);
    } finally {
      _$_TvDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  int getCurrentSeasonNumber(String value) {
    final _$actionInfo = _$_TvDetailsControllerBaseActionController.startAction(
        name: '_TvDetailsControllerBase.getCurrentSeasonNumber');
    try {
      return super.getCurrentSeasonNumber(value);
    } finally {
      _$_TvDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void handleTabSelection() {
    final _$actionInfo = _$_TvDetailsControllerBaseActionController.startAction(
        name: '_TvDetailsControllerBase.handleTabSelection');
    try {
      return super.handleTabSelection();
    } finally {
      _$_TvDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tvDetails: ${tvDetails},
currentSeason: ${currentSeason},
credits: ${credits},
seasonDetails: ${seasonDetails},
videos: ${videos},
similarTv: ${similarTv},
hasTvDetails: ${hasTvDetails},
hasCredits: ${hasCredits},
hasSeasonDetails: ${hasSeasonDetails},
hasVideos: ${hasVideos},
hasSimilarTv: ${hasSimilarTv},
seasons: ${seasons},
seasonNames: ${seasonNames}
    ''';
  }
}
