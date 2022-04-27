// 📦 Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/character/model/character_model.dart';
import 'package:rick_and_morty/feature/character/repository/character_repository.dart';
import 'package:rick_and_morty/feature/character/state/character_state.dart';

final characterStateProvider =
    ChangeNotifierProvider<CharacterNotifierState>((ref) {
  return CharacterNotifierState(ref.read);
});

final characterDetailProvider =
    StateProvider<CharacterModel>((ref) => CharacterModel());

final characterRepository = Provider((ref) => CharacterRepository(ref.read));
