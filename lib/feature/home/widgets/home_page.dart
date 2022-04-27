// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/app/provider/app_theme_provider.dart';
import 'package:rick_and_morty/feature/character/widget/characters_page.dart';
import 'package:rick_and_morty/feature/episode/episode.dart';
import 'package:rick_and_morty/feature/location/location.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final _resourceProvider = ref.watch(resourceProvider);

    return Scaffold(
      appBar: AppBar(
        // title: Theme(
        //   data: ThemeData.dark(),
        //   child: _resourceDropdown(ref),
        // ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.palette),
            onPressed: () {
              ref.watch(appThemeProvider.notifier).switcTheme();
            },
          ),
        ],
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const <Widget>[
            CharacterListPage(),
            LocationsPage(),
            EpisodesPage(),
          ],
        ),
      ),
      // body: Column(
      //   children: [
      //     UISpacing.vertical_16,
      //     Row(
      //       children: [
      //         UISpacing.horizontal_16,
      //         Expanded(
      //           child: OutlinedButton(
      //             onPressed: () {
      //               ref.watch(resourceProvider.notifier).state =
      //                   const ResourceState.character();
      //             },
      //             child: const Text('character'),
      //           ),
      //         ),
      //         UISpacing.horizontal_16,
      //         Expanded(
      //           child: ElevatedButton(
      //             onPressed: () {
      //               ref.watch(resourceProvider.notifier).state =
      //                   const ResourceState.location();
      //             },
      //             child: const Text('location'),
      //           ),
      //         ),
      //         UISpacing.horizontal_16,
      //       ],
      //     ),
      //     Expanded(
      //       child: _resourceProvider.when(
      //         location: () => const LocationsPage(),
      //         character: () => const CharacterListPage(),
      //         episose: () => const EpisodesPage(),
      //       ),
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        }),
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.people),
            title: const Text('Characters'),
            activeColor: Colors.red,
            inactiveColor: Colors.grey[400],
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.gps_fixed_outlined),
            title: const Text('Locations'),
            activeColor: Colors.purpleAccent,
            inactiveColor: Colors.grey[400],
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.movie),
            title: const Text('Episodes'),
            activeColor: Colors.green,
            inactiveColor: Colors.grey[400],
          ),
        ],
      ),
    );
  }

  // DropdownButtonHideUnderline _resourceDropdown(WidgetRef ref) {
  //   final resourceProviderState = ref.watch(resourceProvider);
  //   return DropdownButtonHideUnderline(
  //     child: DropdownButton<ResourceState>(
  //       value: resourceProviderState,
  //       items: const <DropdownMenuItem<ResourceState>>[
  //         DropdownMenuItem(
  //           value: ResourceState.character(),
  //           child: Text('Characters'),
  //         ),
  //         DropdownMenuItem(
  //           value: ResourceState.location(),
  //           child: Text('Locations'),
  //         ),
  //         DropdownMenuItem(
  //           value: ResourceState.episose(),
  //           child: Text('Episodes'),
  //         ),
  //       ],
  //       onChanged: (ResourceState? value) {
  //         ref.watch(resourceProvider.notifier).state = value!;
  //       },
  //     ),
  //   );
  // }
}
