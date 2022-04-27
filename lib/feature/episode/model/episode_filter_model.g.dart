// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EpisodeFilterModel _$$_EpisodeFilterModelFromJson(
        Map<String, dynamic> json) =>
    _$_EpisodeFilterModel(
      page: json['page'] as int? ?? 1,
      name: json['name'] as String?,
      episode: json['episode'] as String?,
    );

Map<String, dynamic> _$$_EpisodeFilterModelToJson(
        _$_EpisodeFilterModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'name': instance.name,
      'episode': instance.episode,
    };
