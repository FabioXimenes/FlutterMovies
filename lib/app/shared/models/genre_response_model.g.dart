// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreResponseModel _$GenreResponseModelFromJson(Map<String, dynamic> json) {
  return GenreResponseModel()
    ..genres = (json['genres'] as List)
        ?.map((e) =>
            e == null ? null : GenreModel.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GenreResponseModelToJson(GenreResponseModel instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
