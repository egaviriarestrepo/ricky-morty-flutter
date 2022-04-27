// 📦 Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/share/constants/app_theme.dart';

final appThemeProvider =
    StateNotifierProvider<AppTheme, bool?>((ref) => AppTheme());
