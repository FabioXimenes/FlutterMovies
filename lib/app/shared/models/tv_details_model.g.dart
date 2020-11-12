// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvDetailsModel _$TvDetailsModelFromJson(Map<String, dynamic> json) {
  return TvDetailsModel()
    ..id = json['id'] as int
    ..backdrop_path = json['backdrop_path'] as String
    ..first_air_date = json['first_air_date'] as String
    ..genres = (json['genres'] as List)
        ?.map((e) =>
            e == null ? null : GenreModel.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..in_production = json['in_production'] as bool
    ..name = json['name'] as String
    ..number_of_seasons = json['number_of_seasons'] as int
    ..number_of_episodes = json['number_of_episodes'] as int
    ..overview = json['overview'] as String
    ..poster_path = json['poster_path'] as String
    ..vote_average = (json['vote_average'] as num)?.toDouble();
}

Map<String, dynamic> _$TvDetailsModelToJson(TvDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.backdrop_path,
      'first_air_date': instance.first_air_date,
      'genres': instance.genres,
      'in_production': instance.in_production,
      'name': instance.name,
      'number_of_seasons': instance.number_of_seasons,
      'number_of_episodes': instance.number_of_episodes,
      'overview': instance.overview,
      'poster_path': instance.poster_path,
      'vote_average': instance.vote_average,
    };
