// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/episode/model/episode_model.dart';
import 'package:rick_and_morty/share/http/app_exception.dart';
import 'package:rick_and_morty/share/model/wraper_responset.dart';

// 🌎 Project imports:

part 'episode_sealed_state.freezed.dart';

@freezed
class EpisodeState with _$EpisodeState {
  const factory EpisodeState.loading() = _Loading;
  const factory EpisodeState.episodeLoaded(
    WraperResponse<EpisodeModel> response,
  ) = _Loaded;
  const factory EpisodeState.error(AppException error) = _Error;
}
