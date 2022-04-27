// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_route/auto_route.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/character/widget/character_page.dart';
import 'package:rick_and_morty/feature/character/widget/routes.dart';
import 'package:rick_and_morty/feature/home/widgets/home_page.dart';
import 'package:rick_and_morty/feature/home/widgets/home_route.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    homeRouter,
    characterRouter,
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
