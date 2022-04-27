// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/character/model/character_filter_model.dart';
import 'package:rick_and_morty/feature/character/model/character_model.dart';
import 'package:rick_and_morty/feature/character/repository/character_api_path.dart';
import 'package:rick_and_morty/feature/character/state/character_sealed_state.dart';
import 'package:rick_and_morty/share/http/api_provider.dart';
import 'package:rick_and_morty/share/http/api_response.dart';
import 'package:rick_and_morty/share/http/app_exception.dart';
import 'package:rick_and_morty/share/model/wraper_responset.dart';

class CharacterRepository {
  CharacterRepository(this._reader);

  late final ApiProvider _api = _reader(apiProvider);
  final Reader _reader;

  Future<CharacterState> fetchCharacters(CharacterFilterModel filters) async {
    final params = filters.toJson();

    final APIResponse response = await _api.get(
      CharacterPath.allCharacters,
      query: params,
    );

    return response.when(
      success: (success) {
        try {
          final value = success as Map<String, dynamic>;

          final resp = WraperResponse<CharacterModel>.fromJson(
            value,
            CharacterModel.fromJson,
          );

          return CharacterState.characterLoaded(resp);
        } catch (e) {
          debugPrint('e --->>> $e');
          return CharacterState.error(
            AppException.errorWithMessage(e.toString()),
          );
        }
      },
      error: (error) {
        debugPrint('error !!! -> $error');
        return CharacterState.error(error);
      },
    );
  }
}
