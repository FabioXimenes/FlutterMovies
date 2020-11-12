// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvResponseModel _$TvResponseModelFromJson(Map<String, dynamic> json) {
  return TvResponseModel()
    ..results = (json['results'] as List)
        ?.map((e) =>
            e == null ? null : TvModel.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TvResponseModelToJson(TvResponseModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
