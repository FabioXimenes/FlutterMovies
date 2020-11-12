import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/shared/models/credits_model.dart';
import 'package:flutter_movie_app/app/shared/models/tv_response_model.dart';
import 'package:flutter_movie_app/app/shared/models/tv_season_details_model.dart';
import 'package:flutter_movie_app/app/shared/models/video_response_model.dart';
import 'package:flutter_movie_app/app/shared/repositories/movie_repository.dart';
import 'package:flutter_movie_app/app/shared/models/tv_details_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'tv_details_controller.g.dart';

@Injectable()
class TvDetailsController = _TvDetailsControllerBase with _$TvDetailsController;

abstract class _TvDetailsControllerBase with Store {
  final List<Tab> tabs = <Tab>[
    Tab(text: 'Episodes'),
    Tab(text: 'Trailers'),
    Tab(text: 'Similar tv shows'),
  ];

  TabController tabController;

  MovieRepository _repository = Modular.get();

  @observable
  TvDetailsModel tvDetails;

  @computed
  String get seasons => tvDetails.number_of_seasons > 1
      ? '   |   ${tvDetails.number_of_seasons} seasons'
      : '   |   ${tvDetails.number_of_seasons} season';

  @computed
  List<String> get seasonNames {
    List<String> names = [];
    for (int i = 0; i < tvDetails.number_of_seasons; i++) {
      names.add('Season ${i + 1}');
    }
    return names;
  }

  @observable
  String currentSeason = 'Season 1';

  @observable
  CreditsModel credits;

  @observable
  TvSeasonDetailsModel seasonDetails;

  @observable
  VideoResponseModel videos;

  @observable
  TvResponseModel similarTv;

  @observable
  bool hasTvDetails = false;

  @observable
  bool hasCredits = false;

  @observable
  bool hasSeasonDetails = false;

  @observable
  bool hasVideos = false;

  @observable
  bool hasSimilarTv = false;

  @action
  Future getTvDetails(int id) async {
    tvDetails = await _repository.getTvDetails(id);
    hasTvDetails = true;
  }

  @action
  Future getTvCredits(int id) async {
    credits = await _repository.getTvCredits(id);
    hasCredits = true;
  }

  @action
  Future getTvSeasonDetails(int id, int season) async {
    seasonDetails = await _repository.getTvSeasonDetails(id, season);
    hasSeasonDetails = true;
  }

  @action
  void getCurrentSeasonInfo(String value) {
    currentSeason = value;
    hasSeasonDetails = false;
    getTvSeasonDetails(tvDetails.id, getCurrentSeasonNumber(currentSeason));
  }

  @action
  int getCurrentSeasonNumber(String value) {
    RegExp regExp = RegExp(r'[0-9]+');
    return int.parse(regExp.stringMatch(currentSeason));
  }

  @action
  Future getSimilarTv(int id) async {
    similarTv = await _repository.getSimilarTv(id);
    hasSimilarTv = true;
  }

  @action
  Future getVideos(int id) async {
    videos = await _repository.getTvVideos(id);
    hasVideos = true;
  }

  @action
  void handleTabSelection() {
    if (tabController.indexIsChanging) {
      print(tabController.index);
      switch (tabController.index) {
        case 0:
          if (!hasSeasonDetails) {
            getCurrentSeasonInfo(currentSeason);
          }
          break;
        case 1:
          if (!hasVideos) {
            getVideos(tvDetails.id);
          }
          break;

        case 2:
          if (!hasSimilarTv) {
            getSimilarTv(tvDetails.id);
          }
          break;
      }
    }
  }
}
