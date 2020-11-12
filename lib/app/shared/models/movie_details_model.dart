import 'package:flutter_movie_app/app/shared/models/genre_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_details_model.g.dart';

@JsonSerializable()
class MovieDetailsModel{
  MovieDetailsModel();
  String backdrop_path;
  String poster_path;
  List<GenreModel> genres;
  int id;
  String original_language;
  String title;
  String overview;
  String release_date;
  int runtime;
  String status;
  double vote_average;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) => _$MovieDetailsModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieDetailsModelToJson(this);
}
  