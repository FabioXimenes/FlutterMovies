import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  MovieModel();

  double popularity;
  int vote_count;
  String poster_path;
  String backdrop_path;
  int id;
  String title;
  List<int> genre_ids;
  double vote_average;
  String overview;
  String release_date;

  factory MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
