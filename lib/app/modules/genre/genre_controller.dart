import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/shared/models/tv_response_model.dart';
import 'package:flutter_movie_app/app/shared/repositories/movie_repository.dart';
import 'package:flutter_movie_app/app/shared/models/movie_response_model.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'genre_controller.g.dart';

@Injectable()
class GenreController = _GenreControllerBase with _$GenreController;

abstract class _GenreControllerBase with Store {
  
  final MovieRepository _repository = Modular.get();

  TabController tabController;

  final List<Tab> tabs = <Tab>[
    Tab(text: 'Movies'),
    Tab(text: 'Series'),
  ];

  @observable
  MovieResponseModel movies;

  @observable
  TvResponseModel tv;

  @observable
  bool hasMovies = false;

  @observable
  bool hasTv = false;

  @action
  discoverMoviesByGenre(int id) async{
    movies = await _repository.discoverMoviesByGenre(id);
    hasMovies = true;
  }

  @action
  discoverTvByGenre(int id) async {
    tv = await _repository.discoverTvByGenre(id);
    hasTv = true;
  }

  @action
  void handleTabSelection(){
    if (tabController.indexIsChanging){
      print(tabController.index);
      switch (tabController.index){
        case 0:
          // if (!hasSeasonDetails){
          //   getCurrentSeasonInfo(currentSeason);
          // }
          break;
        case 1:
          // if (!hasVideos){
          //   getVideos(tvDetails.id);
          // }
          break;
      }
    }
  }

}
