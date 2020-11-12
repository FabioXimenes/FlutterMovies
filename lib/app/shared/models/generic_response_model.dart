import 'package:flutter_movie_app/app/shared/models/generic_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generic_response_model.g.dart';

@JsonSerializable()
class GenericResponseModel {
  GenericResponseModel();
  int page;
  List<GenericModel> results;

  factory GenericResponseModel.fromJson(Map<String, dynamic> json) => _$GenericResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$GenericResponseModelToJson(this);
}