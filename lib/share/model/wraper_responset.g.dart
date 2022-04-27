// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wraper_responset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WraperResponse<T> _$WraperResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    WraperResponse<T>(
      json['info'] == null
          ? null
          : Infopagination.fromJson(json['info'] as Map<String, dynamic>),
      (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$WraperResponseToJson<T>(
  WraperResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results?.map(toJsonT).toList(),
    };
