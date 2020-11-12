import 'package:json_annotation/json_annotation.dart';

part 'person_details_model.g.dart';

@JsonSerializable()
class PersonDetailsModel{
  PersonDetailsModel();
  int id;
  String name;
  String place_of_birth;
  String profile_path;
  String birthday;
  String biography;
  String deathday;

  factory PersonDetailsModel.fromJson(Map<String, dynamic> json) => _$PersonDetailsModelFromJson(json);
  Map<String, dynamic> toJson() => _$PersonDetailsModelToJson(this);
}