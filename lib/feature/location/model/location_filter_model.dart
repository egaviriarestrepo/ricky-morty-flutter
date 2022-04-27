// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_filter_model.freezed.dart';
part 'location_filter_model.g.dart';

@freezed
class LocationFilterModel with _$LocationFilterModel {
  factory LocationFilterModel({
    @Default(1) int page,
    String? name,
    String? location,
  }) = _LocationFilterModel;

  factory LocationFilterModel.fromJson(Map<String, dynamic> json) =>
      _$LocationFilterModelFromJson(json);
}
