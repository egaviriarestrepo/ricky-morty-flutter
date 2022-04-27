// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/character/provider/character_provider.dart';
import 'package:rick_and_morty/share/UI/spacing.dart';

class CharacterPage extends ConsumerWidget {
  const CharacterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final character = ref.watch(characterDetailProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              character.name ?? '',
              style: Theme.of(context).textTheme.headline4,
            ),
            UISpacing.vertical_16,
            Hero(
              tag: character.image.toString(),
              child: CachedNetworkImage(
                imageUrl: character.image ?? '',
                fit: BoxFit.fitWidth,
                width: double.infinity,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) {
                  return const Center(child: Icon(Icons.error));
                },
              ),
            ),
            UISpacing.vertical_16,
            Text(
              character.gender ?? '',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const Divider(),
            Text(
              character.status ?? '',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const Divider(),
            Text(
              character.type ?? '',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
