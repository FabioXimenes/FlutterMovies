// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenericModel _$GenericModelFromJson(Map<String, dynamic> json) {
  return GenericModel()
    ..poster_path = json['poster_path'] as String
    ..id = json['id'] as int
    ..overview = json['overview'] as String
    ..backdrop_path = json['backdrop_path'] as String
    ..vote_average = (json['vote_average'] as num)?.toDouble()
    ..media_type = json['media_type'] as String
    ..first_air_date = json['first_air_date'] as String
    ..origin_country =
        (json['origin_country'] as List)?.map((e) => e as String)?.toList()
    ..genre_ids = (json['genre_ids'] as List)?.map((e) => e as int)?.toList()
    ..name = json['name'] as String
    ..original_name = json['original_name'] as String
    ..release_date = json['release_date'] as String
    ..original_title = json['original_title'] as String
    ..title = json['title'] as String
    ..profile_path = json['profile_path'] as String;
}

Map<String, dynamic> _$GenericModelToJson(GenericModel instance) =>
    <String, dynamic>{
      'poster_path': instance.poster_path,
      'id': instance.id,
      'overview': instance.overview,
      'backdrop_path': instance.backdrop_path,
      'vote_average': instance.vote_average,
      'media_type': instance.media_type,
      'first_air_date': instance.first_air_date,
      'origin_country': instance.origin_country,
      'genre_ids': instance.genre_ids,
      'name': instance.name,
      'original_name': instance.original_name,
      'release_date': instance.release_date,
      'original_title': instance.original_title,
      'title': instance.title,
      'profile_path': instance.profile_path,
    };
