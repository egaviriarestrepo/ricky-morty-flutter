// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_filter_model.freezed.dart';
part 'episode_filter_model.g.dart';

@freezed
class EpisodeFilterModel with _$EpisodeFilterModel {
  factory EpisodeFilterModel({
    @Default(1) int page,
    String? name,
    String? episode,
  }) = _EpisodeFilterModel;

  factory EpisodeFilterModel.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFilterModelFromJson(json);
}
