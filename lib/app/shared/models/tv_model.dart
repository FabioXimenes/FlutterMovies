

import 'package:json_annotation/json_annotation.dart';

part 'tv_model.g.dart';

@JsonSerializable()
class TvModel{
  TvModel();
  
  @JsonKey(name: 'original_name')
  String title;

  int id;
  double vote_average;
  List<int> genre_ids;
  String poster_path;
  String backdrop_path;

  factory TvModel.fromJson(Map<String, dynamic> json) => _$TvModelFromJson(json);
  Map<String, dynamic> toJson() => _$TvModelToJson(this);
  
}
  