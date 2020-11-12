import 'package:flutter_movie_app/app/shared/models/tv_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tv_response_model.g.dart';

@JsonSerializable()
class TvResponseModel {
  TvResponseModel();

  List<TvModel> results;

  factory TvResponseModel.fromJson(Map<String, dynamic> json) => _$TvResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$TvResponseModelToJson(this);
}
