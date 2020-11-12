import 'package:flutter_movie_app/app/shared/models/video_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video_response_model.g.dart';

@JsonSerializable()
class VideoResponseModel{
  VideoResponseModel();
  int id;
  List<VideoModel> results;

  factory VideoResponseModel.fromJson(Map<String, dynamic> json) => _$VideoResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$VideoResponseModelToJson(this);
}