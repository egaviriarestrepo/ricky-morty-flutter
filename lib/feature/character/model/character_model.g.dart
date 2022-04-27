// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterModel _$$_CharacterModelFromJson(Map<String, dynamic> json) =>
    _$_CharacterModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      status: json['status'] as String?,
      species: json['species'] as String?,
      type: json['type'] as String?,
      gender: json['gender'] as String?,
      image: json['image'] as String?,
      origin: json['origin'] == null
          ? null
          : CharacterLocation.fromJson(json['origin'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : CharacterLocation.fromJson(
              json['location'] as Map<String, dynamic>),
      episode:
          (json['episode'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CharacterModelToJson(_$_CharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'image': instance.image,
      'origin': instance.origin,
      'location': instance.location,
      'episode': instance.episode,
    };

_$_CharacterLocation _$$_CharacterLocationFromJson(Map<String, dynamic> json) =>
    _$_CharacterLocation(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_CharacterLocationToJson(
        _$_CharacterLocation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
