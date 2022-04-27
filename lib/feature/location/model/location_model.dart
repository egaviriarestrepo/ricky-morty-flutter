// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel({
    int? id,
    String? name,
    String? type,
    String? dimension,
    List<String>? residents,
    String? url,
    DateTime? created,
  }) = _LocationModel;

  factory LocationModel.fromJson(dynamic json) => _$LocationModelFromJson(json);
}
