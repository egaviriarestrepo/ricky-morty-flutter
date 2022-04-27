// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Infopagination _$$_InfopaginationFromJson(Map<String, dynamic> json) =>
    _$_Infopagination(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$$_InfopaginationToJson(_$_Infopagination instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };
