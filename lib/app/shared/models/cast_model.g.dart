// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CastModel _$CastModelFromJson(Map<String, dynamic> json) {
  return CastModel()
    ..id = json['id'] as int
    ..order = json['order'] as int
    ..character = json['character'] as String
    ..profile_path = json['profile_path'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$CastModelToJson(CastModel instance) => <String, dynamic>{
      'id': instance.id,
      'order': instance.order,
      'character': instance.character,
      'profile_path': instance.profile_path,
      'name': instance.name,
    };
