// 📦 Package imports:
import 'package:auto_route/auto_route.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/character/widget/character_page.dart';

// const characterListRouter =
//AutoRoute(page: CharacterListPage, initial: true);

const characterRouter = CustomRoute(
  page: CharacterPage,
);
