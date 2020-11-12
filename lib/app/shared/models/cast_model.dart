import 'package:json_annotation/json_annotation.dart';

part 'cast_model.g.dart';

@JsonSerializable()
class CastModel {
  CastModel();
  int id;
  int order;
  String character;
  String profile_path;
  String name;

  factory CastModel.fromJson(Map<String, dynamic> json) => _$CastModelFromJson(json);
  Map<String, dynamic> toJson() => _$CastModelToJson(this);
}