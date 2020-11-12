import 'package:json_annotation/json_annotation.dart';

part 'video_model.g.dart';

@JsonSerializable()
class VideoModel{
  VideoModel();
  String id;
  String key;
  String name;
  String site;
  String type;
  int size;
  
  factory VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);
  Map<String, dynamic> toJson() => _$VideoModelToJson(this);
}

