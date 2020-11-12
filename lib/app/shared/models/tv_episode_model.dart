import 'package:json_annotation/json_annotation.dart';

part 'tv_episode_model.g.dart';

@JsonSerializable()
class TvEpisodeModel{
  TvEpisodeModel();
  int episode_number;
  int id;
  int season_number;
  String name;
  String overview;
  String still_path;
  double vote_average;
  String air_date;

  factory TvEpisodeModel.fromJson(Map<String, dynamic> json) => _$TvEpisodeModelFromJson(json);
  Map<String, dynamic> toJson() => _$TvEpisodeModelToJson(this);
}