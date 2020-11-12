// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return MovieModel()
    ..popularity = (json['popularity'] as num)?.toDouble()
    ..vote_count = json['vote_count'] as int
    ..poster_path = json['poster_path'] as String
    ..backdrop_path = json['backdrop_path'] as String
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..genre_ids = (json['genre_ids'] as List)?.map((e) => e as int)?.toList()
    ..vote_average = (json['vote_average'] as num)?.toDouble()
    ..overview = json['overview'] as String
    ..release_date = json['release_date'] as String;
}

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'popularity': instance.popularity,
      'vote_count': instance.vote_count,
      'poster_path': instance.poster_path,
      'backdrop_path': instance.backdrop_path,
      'id': instance.id,
      'title': instance.title,
      'genre_ids': instance.genre_ids,
      'vote_average': instance.vote_average,
      'overview': instance.overview,
      'release_date': instance.release_date,
    };
