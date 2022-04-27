// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/character/model/character_filter_model.dart';
import 'package:rick_and_morty/feature/character/model/character_model.dart';
import 'package:rick_and_morty/feature/character/provider/character_provider.dart';
import 'package:rick_and_morty/feature/character/state/character_sealed_state.dart';
import 'package:rick_and_morty/share/http/app_exception.dart';
import 'package:rick_and_morty/share/model/info_pagination.dart';
import 'package:rick_and_morty/share/model/wraper_responset.dart';

class CharacterNotifierState extends ChangeNotifier {
  CharacterNotifierState(this._reader) {
    fetchCharacters(1);
  }

  CharacterFilterModel filter = CharacterFilterModel();
  Infopagination? info;
  CharacterState response = const CharacterState.loading();

  late PagingController<int, CharacterModel> pagingController;
  final Reader _reader;

  Future<void> fetchCharacters(int pageKey) async {
    debugPrint('--->>> fetchCharacters $pageKey');
    filter = filter.copyWith(
      page: pageKey,
    );

    response = await _reader(characterRepository).fetchCharacters(filter);

    response.when(
      loading: () => null,
      characterLoaded: (WraperResponse<CharacterModel> response) {
        info = response.info;
        final List<CharacterModel> _characters =
            response.results ?? <CharacterModel>[];

        if (pageKey >= (info?.pages ?? 0)) {
          pagingController.appendLastPage(_characters);
        } else {
          pagingController.appendPage(_characters, pageKey + 1);
        }
      },
      error: (AppException exception) {
        pagingController.error = exception.toString();
      },
    );

    // await Future.delayed(const Duration(seconds: 2));
    notifyListeners();
  }
}
