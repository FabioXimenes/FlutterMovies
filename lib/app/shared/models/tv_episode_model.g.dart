// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvEpisodeModel _$TvEpisodeModelFromJson(Map<String, dynamic> json) {
  return TvEpisodeModel()
    ..episode_number = json['episode_number'] as int
    ..id = json['id'] as int
    ..season_number = json['season_number'] as int
    ..name = json['name'] as String
    ..overview = json['overview'] as String
    ..still_path = json['still_path'] as String
    ..vote_average = (json['vote_average'] as num)?.toDouble()
    ..air_date = json['air_date'] as String;
}

Map<String, dynamic> _$TvEpisodeModelToJson(TvEpisodeModel instance) =>
    <String, dynamic>{
      'episode_number': instance.episode_number,
      'id': instance.id,
      'season_number': instance.season_number,
      'name': instance.name,
      'overview': instance.overview,
      'still_path': instance.still_path,
      'vote_average': instance.vote_average,
      'air_date': instance.air_date,
    };
