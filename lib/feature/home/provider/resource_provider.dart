// 📦 Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/home/state/resource_state.dart';

final resourceProvider =
    StateProvider<ResourceState>((ref) => const ResourceState.location());
