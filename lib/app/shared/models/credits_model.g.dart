// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditsModel _$CreditsModelFromJson(Map<String, dynamic> json) {
  return CreditsModel()
    ..id = json['id'] as int
    ..cast = (json['cast'] as List)
        ?.map((e) =>
            e == null ? null : CastModel.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CreditsModelToJson(CreditsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
    };
