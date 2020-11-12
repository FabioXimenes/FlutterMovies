// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonDetailsModel _$PersonDetailsModelFromJson(Map<String, dynamic> json) {
  return PersonDetailsModel()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..place_of_birth = json['place_of_birth'] as String
    ..profile_path = json['profile_path'] as String
    ..birthday = json['birthday'] as String
    ..biography = json['biography'] as String
    ..deathday = json['deathday'] as String;
}

Map<String, dynamic> _$PersonDetailsModelToJson(PersonDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'place_of_birth': instance.place_of_birth,
      'profile_path': instance.profile_path,
      'birthday': instance.birthday,
      'biography': instance.biography,
      'deathday': instance.deathday,
    };
