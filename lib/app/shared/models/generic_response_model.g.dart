// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericResponseModel _$GenericResponseModelFromJson(Map<String, dynamic> json) {
  return GenericResponseModel()
    ..page = json['page'] as int
    ..results = (json['results'] as List)
        ?.map((e) =>
            e == null ? null : GenericModel.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GenericResponseModelToJson(
        GenericResponseModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
