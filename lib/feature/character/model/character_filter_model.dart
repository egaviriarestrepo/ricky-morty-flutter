// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/share/constants/enums.dart';

part 'character_filter_model.freezed.dart';
part 'character_filter_model.g.dart';

@freezed
class CharacterFilterModel with _$CharacterFilterModel {
  factory CharacterFilterModel({
    String? name,
    CharacterStatus? status,
    CharacterSpecies? species,
    String? type,
    CharacterGender? gender,
    @Default(1) int page,
  }) = _CharacterFilterModel;

  factory CharacterFilterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterFilterModelFromJson(json);
}
