import 'package:flutter_movie_app/app/shared/models/movie_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person_movie_credits_model.g.dart';

@JsonSerializable()
class PersonMovieCreditsModel {
  PersonMovieCreditsModel();
  List<MovieModel> cast;
  
  factory PersonMovieCreditsModel.fromJson(Map<String, dynamic> json) => _$PersonMovieCreditsModelFromJson(json);
  Map<String, dynamic> toJson() => _$PersonMovieCreditsModelToJson(this);
}