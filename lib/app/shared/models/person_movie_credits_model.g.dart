// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_movie_credits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonMovieCreditsModel _$PersonMovieCreditsModelFromJson(
    Map<String, dynamic> json) {
  return PersonMovieCreditsModel()
    ..cast = (json['cast'] as List)
        ?.map((e) =>
            e == null ? null : MovieModel.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PersonMovieCreditsModelToJson(
        PersonMovieCreditsModel instance) =>
    <String, dynamic>{
      'cast': instance.cast,
    };
