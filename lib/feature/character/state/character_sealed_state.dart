// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/character/model/character_model.dart';
import 'package:rick_and_morty/share/http/app_exception.dart';
import 'package:rick_and_morty/share/model/wraper_responset.dart';

// 🌎 Project imports:

part 'character_sealed_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.loading() = _Loading;
  const factory CharacterState.characterLoaded(
    WraperResponse<CharacterModel> response,
  ) = _Loaded;
  const factory CharacterState.error(AppException error) = _Error;
}
