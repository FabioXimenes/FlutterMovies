import 'package:flutter_movie_app/app/shared/models/genre_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'genre_response_model.g.dart';

@JsonSerializable()
class GenreResponseModel {
  GenreResponseModel();

  List<GenreModel> genres;

  factory GenreResponseModel.fromJson(Map<String, dynamic> json) => _$GenreResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$GenreResponseModelToJson(this);
}

