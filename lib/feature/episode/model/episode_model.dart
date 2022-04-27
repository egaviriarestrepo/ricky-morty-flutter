// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_model.freezed.dart';
part 'episode_model.g.dart';

@freezed
class EpisodeModel with _$EpisodeModel {
  factory EpisodeModel({
    final int? id,
    final String? name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'air_date') final String? airDate,
    final String? episode,
    final List<String>? characters,
    final String? url,
    final DateTime? created,
  }) = _EpisodeModel;

  factory EpisodeModel.fromJson(dynamic json) => _$EpisodeModelFromJson(json);
}
