// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// 🌎 Project imports:
import 'package:rick_and_morty/share/model/info_pagination.dart';

//  https://github.com/google/json_serializable.dart/blob/master/example/lib/json_converter_example.dart
part 'wraper_responset.g.dart';

@JsonSerializable(
  genericArgumentFactories: true,
)
class WraperResponse<T> {
  WraperResponse(this.info, this.results);

  // factory WraperResponse.fromJson(
  //   Map<String, dynamic> json,
  //   T Function(Map<String, dynamic> json) fromJsonT,
  // ) =>

  factory WraperResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) =>
      WraperResponse<T>(
        json['info'] == null
            ? null
            : Infopagination.fromJson(json['info'] as Map<String, dynamic>),
        (json['results'] as List<dynamic>).map(fromJsonT).toList(),
      );

  final Infopagination? info;
  final List<T>? results;
}
