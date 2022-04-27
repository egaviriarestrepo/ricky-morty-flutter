// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/feature/location/model/location_model.dart';
import 'package:rick_and_morty/share/http/app_exception.dart';
import 'package:rick_and_morty/share/model/wraper_responset.dart';

// 🌎 Project imports:

// 🌎 Project imports:

part 'location_fetch_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.loading() = _Loading;
  const factory LocationState.locationLoaded(
    WraperResponse<LocationModel> response,
  ) = _Loaded;
  const factory LocationState.error(AppException error) = _Error;
}
