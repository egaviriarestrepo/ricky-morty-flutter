// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_pagination.freezed.dart';
part 'info_pagination.g.dart';

@freezed
class Infopagination with _$Infopagination {
  factory Infopagination({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _Infopagination;

  factory Infopagination.fromJson(Map<String, dynamic> json) =>
      _$InfopaginationFromJson(json);
}
