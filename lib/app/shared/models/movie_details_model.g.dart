// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailsModel _$MovieDetailsModelFromJson(Map<String, dynamic> json) {
  return MovieDetailsModel()
    ..backdrop_path = json['backdrop_path'] as String
    ..poster_path = json['poster_path'] as String
    ..genres = (json['genres'] as List)
        ?.map((e) =>
            e == null ? null : GenreModel.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..id = json['id'] as int
    ..original_language = json['original_language'] as String
    ..title = json['title'] as String
    ..overview = json['overview'] as String
    ..release_date = json['release_date'] as String
    ..runtime = json['runtime'] as int
    ..status = json['status'] as String
    ..vote_average = (json['vote_average'] as num)?.toDouble();
}

Map<String, dynamic> _$MovieDetailsModelToJson(MovieDetailsModel instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdrop_path,
      'poster_path': instance.poster_path,
      'genres': instance.genres,
      'id': instance.id,
      'original_language': instance.original_language,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.release_date,
      'runtime': instance.runtime,
      'status': instance.status,
      'vote_average': instance.vote_average,
    };
