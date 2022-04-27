// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterFilterModel _$$_CharacterFilterModelFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterFilterModel(
      name: json['name'] as String?,
      status: $enumDecodeNullable(_$CharacterStatusEnumMap, json['status']),
      species: $enumDecodeNullable(_$CharacterSpeciesEnumMap, json['species']),
      type: json['type'] as String?,
      gender: $enumDecodeNullable(_$CharacterGenderEnumMap, json['gender']),
      page: json['page'] as int? ?? 1,
    );

Map<String, dynamic> _$$_CharacterFilterModelToJson(
        _$_CharacterFilterModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': _$CharacterStatusEnumMap[instance.status],
      'species': _$CharacterSpeciesEnumMap[instance.species],
      'type': instance.type,
      'gender': _$CharacterGenderEnumMap[instance.gender],
      'page': instance.page,
    };

const _$CharacterStatusEnumMap = {
  CharacterStatus.alive: 'alive',
  CharacterStatus.unknown: 'unknown',
  CharacterStatus.dead: 'dead',
  CharacterStatus.empty: 'empty',
};

const _$CharacterSpeciesEnumMap = {
  CharacterSpecies.human: 'human',
  CharacterSpecies.alien: 'alien',
  CharacterSpecies.empty: 'empty',
};

const _$CharacterGenderEnumMap = {
  CharacterGender.male: 'male',
  CharacterGender.female: 'female',
  CharacterGender.unknown: 'unknown',
  CharacterGender.empty: 'empty',
};
