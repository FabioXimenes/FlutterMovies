import 'package:flutter_movie_app/app/shared/models/tv_episode_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tv_season_details_model.g.dart';

@JsonSerializable()
class TvSeasonDetailsModel{
  TvSeasonDetailsModel();
  String air_date;
  List<TvEpisodeModel> episodes;
  String name;
  String overview;
  int id;
  String poster_path;
  int season_number;

  factory TvSeasonDetailsModel.fromJson(Map<String, dynamic> json) => _$TvSeasonDetailsModelFromJson(json);
  Map<String, dynamic> toJson() => _$TvSeasonDetailsModelToJson(this);
}