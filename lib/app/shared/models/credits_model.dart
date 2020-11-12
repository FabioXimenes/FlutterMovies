import 'package:flutter_movie_app/app/shared/models/cast_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'credits_model.g.dart';

@JsonSerializable()
class CreditsModel {
  CreditsModel();
  int id;
  List<CastModel> cast;

  factory CreditsModel.fromJson(Map<String, dynamic> json) => _$CreditsModelFromJson(json);
  Map<String, dynamic> toJson() => _$CreditsModelToJson(this);
}