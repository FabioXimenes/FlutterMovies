// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvModel _$TvModelFromJson(Map<String, dynamic> json) {
  return TvModel()
    ..title = json['original_name'] as String
    ..id = json['id'] as int
    ..vote_average = (json['vote_average'] as num)?.toDouble()
    ..genre_ids = (json['genre_ids'] as List)?.map((e) => e as int)?.toList()
    ..poster_path = json['poster_path'] as String
    ..backdrop_path = json['backdrop_path'] as String;
}

Map<String, dynamic> _$TvModelToJson(TvModel instance) => <String, dynamic>{
      'original_name': instance.title,
      'id': instance.id,
      'vote_average': instance.vote_average,
      'genre_ids': instance.genre_ids,
      'poster_path': instance.poster_path,
      'backdrop_path': instance.backdrop_path,
    };
