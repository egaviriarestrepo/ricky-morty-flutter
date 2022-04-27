// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Infopagination _$InfopaginationFromJson(Map<String, dynamic> json) {
  return _Infopagination.fromJson(json);
}

/// @nodoc
class _$InfopaginationTearOff {
  const _$InfopaginationTearOff();

  _Infopagination call(
      {required int count, required int pages, String? next, String? prev}) {
    return _Infopagination(
      count: count,
      pages: pages,
      next: next,
      prev: prev,
    );
  }

  Infopagination fromJson(Map<String, Object?> json) {
    return Infopagination.fromJson(json);
  }
}

/// @nodoc
const $Infopagination = _$InfopaginationTearOff();

/// @nodoc
mixin _$Infopagination {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfopaginationCopyWith<Infopagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfopaginationCopyWith<$Res> {
  factory $InfopaginationCopyWith(
          Infopagination value, $Res Function(Infopagination) then) =
      _$InfopaginationCopyWithImpl<$Res>;
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class _$InfopaginationCopyWithImpl<$Res>
    implements $InfopaginationCopyWith<$Res> {
  _$InfopaginationCopyWithImpl(this._value, this._then);

  final Infopagination _value;
  // ignore: unused_field
  final $Res Function(Infopagination) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? pages = freezed,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: prev == freezed
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$InfopaginationCopyWith<$Res>
    implements $InfopaginationCopyWith<$Res> {
  factory _$InfopaginationCopyWith(
          _Infopagination value, $Res Function(_Infopagination) then) =
      __$InfopaginationCopyWithImpl<$Res>;
  @override
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class __$InfopaginationCopyWithImpl<$Res>
    extends _$InfopaginationCopyWithImpl<$Res>
    implements _$InfopaginationCopyWith<$Res> {
  __$InfopaginationCopyWithImpl(
      _Infopagination _value, $Res Function(_Infopagination) _then)
      : super(_value, (v) => _then(v as _Infopagination));

  @override
  _Infopagination get _value => super._value as _Infopagination;

  @override
  $Res call({
    Object? count = freezed,
    Object? pages = freezed,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_Infopagination(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: prev == freezed
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Infopagination implements _Infopagination {
  _$_Infopagination(
      {required this.count, required this.pages, this.next, this.prev});

  factory _$_Infopagination.fromJson(Map<String, dynamic> json) =>
      _$$_InfopaginationFromJson(json);

  @override
  final int count;
  @override
  final int pages;
  @override
  final String? next;
  @override
  final String? prev;

  @override
  String toString() {
    return 'Infopagination(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Infopagination &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.pages, pages) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.prev, prev));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(pages),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(prev));

  @JsonKey(ignore: true)
  @override
  _$InfopaginationCopyWith<_Infopagination> get copyWith =>
      __$InfopaginationCopyWithImpl<_Infopagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfopaginationToJson(this);
  }
}

abstract class _Infopagination implements Infopagination {
  factory _Infopagination(
      {required int count,
      required int pages,
      String? next,
      String? prev}) = _$_Infopagination;

  factory _Infopagination.fromJson(Map<String, dynamic> json) =
      _$_Infopagination.fromJson;

  @override
  int get count;
  @override
  int get pages;
  @override
  String? get next;
  @override
  String? get prev;
  @override
  @JsonKey(ignore: true)
  _$InfopaginationCopyWith<_Infopagination> get copyWith =>
      throw _privateConstructorUsedError;
}
