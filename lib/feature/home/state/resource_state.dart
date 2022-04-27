// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_state.freezed.dart';

@freezed
class ResourceState with _$ResourceState {
  const factory ResourceState.character() = _Character;
  const factory ResourceState.location() = _Location;
  const factory ResourceState.episose() = _Episode;
}
