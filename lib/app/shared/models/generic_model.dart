import 'package:json_annotation/json_annotation.dart';

part 'generic_model.g.dart';

@JsonSerializable()
class GenericModel {
  GenericModel();
  String poster_path;
  int id;
  String overview;
  String backdrop_path;
  double vote_average;
  String media_type;
  String first_air_date;
  List<String> origin_country;
  List<int> genre_ids;
  
  String name;
  String original_name;
  String release_date;
  String original_title;
  String title;
  String profile_path;

  factory GenericModel.fromJson(Map<String, dynamic> json) => _$GenericModelFromJson(json);
  Map<String, dynamic> toJson() => _$GenericModelToJson(this);

}