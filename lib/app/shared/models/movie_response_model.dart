import 'package:flutter_movie_app/app/shared/models/movie_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_response_model.g.dart';

@JsonSerializable()
class MovieResponseModel {
  MovieResponseModel();

  List<MovieModel> results;

  factory MovieResponseModel.fromJson(Map<String, dynamic> json) => _$MovieResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieResponseModelToJson(this);
}
