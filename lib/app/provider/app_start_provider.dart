// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:rick_and_morty/app/state/app_start_state.dart';
// import 'package:rick_and_morty/share/repository/token_repository.dart';

// final appStartProvider =
//     StateNotifierProvider<AppStartNotifier, AppStartState>((ref) {
//   // final loginState = ref.watch(authProvider);
//   // final homeState = ref.watch(homeProvider);

//   late AppStartState appStartState;
//   // appStartState = loginState is AppAuthenticated
//   appStartState = false
//       ? const AppStartState.authenticated()
//       : const AppStartState.initial();

//   // return AppStartNotifier(appStartState, ref.read, loginState, homeState);
//   return AppStartNotifier(appStartState, ref.read);
// });

// class AppStartNotifier extends StateNotifier<AppStartState> {
//   AppStartNotifier(
//     AppStartState appStartState,
//     this._reader,
//     // this._authState,
//     // this._homeState,
//   ) : super(appStartState) {
//     _init();
//   }

//   late final TokenRepository _tokenRepository =
//       _reader(tokenRepositoryProvider);
//   // final AuthState _authState;
//   // final HomeState _homeState;
//   final Reader _reader;

//   Future<void> _init() async {
//     // _authState.maybeWhen(
//     //   loggedIn: () {
//     //     debugPrint('loggedIn!!');
//     //     state = const AppStartState.authenticated();
//     //   },
//     //   orElse: () {
//     //     debugPrint('loggedIn orElse!!');
//     //   },
//     // );

//     // _homeState.maybeWhen(
//     //   loggedOut: () {
//     //     debugPrint('loggedOut!!');
//     //     state = const AppStartState.unauthenticated();
//     //   },
//     //   orElse: () {
//     //     debugPrint('loggedOut orElse!!');
//     //   },
//     // );

//     final token = await _tokenRepository.fetchToken();
//     if (token != null) {
//       if (mounted) {
//         state = const AppStartState.authenticated();
//       }
//     } else {
//       if (mounted) {
//         state = const AppStartState.unauthenticated();
//       }
//     }
//   }
// }
