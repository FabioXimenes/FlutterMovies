// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_season_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvSeasonDetailsModel _$TvSeasonDetailsModelFromJson(Map<String, dynamic> json) {
  return TvSeasonDetailsModel()
    ..air_date = json['air_date'] as String
    ..episodes = (json['episodes'] as List)
        ?.map((e) => e == null
            ? null
            : TvEpisodeModel.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..name = json['name'] as String
    ..overview = json['overview'] as String
    ..id = json['id'] as int
    ..poster_path = json['poster_path'] as String
    ..season_number = json['season_number'] as int;
}

Map<String, dynamic> _$TvSeasonDetailsModelToJson(
        TvSeasonDetailsModel instance) =>
    <String, dynamic>{
      'air_date': instance.air_date,
      'episodes': instance.episodes,
      'name': instance.name,
      'overview': instance.overview,
      'id': instance.id,
      'poster_path': instance.poster_path,
      'season_number': instance.season_number,
    };
