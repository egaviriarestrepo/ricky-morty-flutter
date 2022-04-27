// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shimmer/shimmer.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/character/model/character_model.dart';
import 'package:rick_and_morty/feature/character/provider/character_provider.dart';
import 'package:rick_and_morty/feature/character/widget/character_grid_item.dart';
import 'package:rick_and_morty/share/UI/spacing.dart';

class CharacterListPage extends ConsumerStatefulWidget {
  const CharacterListPage({Key? key}) : super(key: key);

  @override
  CharacterListPageState createState() => CharacterListPageState();
}

class CharacterListPageState extends ConsumerState<CharacterListPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    ref.read(characterStateProvider).pagingController =
        PagingController<int, CharacterModel>(
      firstPageKey: 1,
    );

    ref.read(characterStateProvider).pagingController.addPageRequestListener(
      (pageKey) {
        ref.read(characterStateProvider).fetchCharacters(pageKey);
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    debugPrint('--->>> dispose');
    ref.watch(characterStateProvider.notifier).pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final characterNotifierState = ref.watch(characterStateProvider);

    return characterNotifierState.response.maybeWhen(
      loading: () => _shimmer(),
      orElse: () => RefreshIndicator(
        onRefresh: () => Future.sync(
          () => characterNotifierState.pagingController.refresh(),
        ),
        child: PagedGridView(
          cacheExtent: 3,
          pagingController: characterNotifierState.pagingController,
          padding: const EdgeInsets.all(16),
          gridDelegate: _getGridDelegate(),
          builderDelegate: PagedChildBuilderDelegate(
            animateTransitions: true,
            itemBuilder:
                (BuildContext context, CharacterModel character, int index) {
              return CharacterGridItem(
                key: Key(character.name ?? ''),
                character: character,
                ref: ref,
              );
            },
          ),
        ),
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount _getGridDelegate() =>
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 4,
      );

  Widget _shimmer() => Shimmer.fromColors(
        baseColor: Colors.grey[800]!,
        highlightColor: Colors.grey[100]!,
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: _getGridDelegate(),
          itemBuilder: (_, __) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 48,
                    color: Colors.white,
                  ),
                ),
                UISpacing.vertical_8,
                Container(
                  width: double.infinity,
                  height: 16,
                  color: Colors.white,
                ),
                UISpacing.vertical_8,
              ],
            ),
          ),
          itemCount: 2,
        ),
      );

  @override
  bool get wantKeepAlive => true;
}
