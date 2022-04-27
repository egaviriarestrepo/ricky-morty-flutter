// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/app/provider/app_theme_provider.dart';
import 'package:rick_and_morty/share/constants/app_theme.dart';
import 'package:rick_and_morty/share/router/router.dart';
import 'package:rick_and_morty/share/util/logger.dart';
import 'package:rick_and_morty/share/util/platform_type.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final platformType = detectPlatformType();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  await dotenv.load(fileName: 'assets/env/.env.development');

  runApp(
    ProviderScope(
      overrides: [
        platformTypeProvider.overrideWithValue(platformType),
      ],
      observers: [
        Logger(),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _appThemeProvider = ref.watch(appThemeProvider);
    return MaterialApp.router(
      themeMode: _appThemeProvider == null
          ? ThemeMode.system
          : _appThemeProvider
              ? ThemeMode.dark
              : ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
