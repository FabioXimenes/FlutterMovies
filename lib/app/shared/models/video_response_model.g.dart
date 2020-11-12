// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoResponseModel _$VideoResponseModelFromJson(Map<String, dynamic> json) {
  return VideoResponseModel()
    ..id = json['id'] as int
    ..results = (json['results'] as List)
        ?.map((e) =>
            e == null ? null : VideoModel.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$VideoResponseModelToJson(VideoResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };
