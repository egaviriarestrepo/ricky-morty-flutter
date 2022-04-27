// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/character/model/character_model.dart';
import 'package:rick_and_morty/feature/character/provider/character_provider.dart';
import 'package:rick_and_morty/share/UI/spacing.dart';
import 'package:rick_and_morty/share/router/router.dart';

class CharacterGridItem extends StatelessWidget {
  const CharacterGridItem({
    Key? key,
    required this.character,
    required this.ref,
  }) : super(key: key);

  final CharacterModel character;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Hero(
                tag: character.image.toString(),
                child: CachedNetworkImage(
                  imageUrl: character.image ?? '',
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  placeholder: (_, __) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (_, __, ___) {
                    return const Center(child: Icon(Icons.error));
                  },
                ),
              ),
            ),
            UISpacing.vertical_8,
            Text(
              character.name ?? '',
              style: Theme.of(context).textTheme.bodyText1,
              overflow: TextOverflow.ellipsis,
            ),
            UISpacing.vertical_4,
          ],
        ),
      ),
      onTap: () {
        ref.watch(characterDetailProvider.notifier).state = character;
        context.router.push(const CharacterRoute());
      },
    );
  }
}
