// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return VideoModel()
    ..id = json['id'] as String
    ..key = json['key'] as String
    ..name = json['name'] as String
    ..site = json['site'] as String
    ..type = json['type'] as String
    ..size = json['size'] as int;
}

Map<String, dynamic> _$VideoModelToJson(VideoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'site': instance.site,
      'type': instance.type,
      'size': instance.size,
    };
