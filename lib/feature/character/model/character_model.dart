// 🎯 Dart imports:
import 'dart:convert';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

// List<Character> charactersFromJson(List<dynamic> data) =>
//     List<Character>.from(data.map((dynamic x) => Character.fromJson(x)));

CharacterModel characterFromJson(String str) =>
    CharacterModel.fromJson(json.decode(str));

@freezed
class CharacterModel with _$CharacterModel {
  factory CharacterModel({
    int? id,
    String? name,
    String? status,
    String? species,
    String? type,
    String? gender,
    String? image,
    CharacterLocation? origin,
    CharacterLocation? location,
    List<String>? episode,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(dynamic json) =>
      _$CharacterModelFromJson(json);
}

@freezed
class CharacterLocation with _$CharacterLocation {
  factory CharacterLocation({
    String? name,
    String? url,
  }) = _CharacterLocation;

  factory CharacterLocation.fromJson(Map<String, dynamic> json) =>
      _$CharacterLocationFromJson(json);
}
