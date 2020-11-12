import 'package:flutter_movie_app/app/shared/models/genre_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tv_details_model.g.dart';

@JsonSerializable()
class TvDetailsModel{
  TvDetailsModel();
  int id;
  String backdrop_path;
  String first_air_date;
  List<GenreModel> genres;
  bool in_production;
  String name;
  int number_of_seasons;
  int number_of_episodes;
  String overview;
  String poster_path;
  double vote_average;

  factory TvDetailsModel.fromJson(Map<String, dynamic> json) => _$TvDetailsModelFromJson(json);
  Map<String, dynamic> toJson() => _$TvDetailsModelToJson(this);
}