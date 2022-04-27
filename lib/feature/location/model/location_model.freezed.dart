// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
class _$LocationModelTearOff {
  const _$LocationModelTearOff();

  _LocationModel call(
      {int? id,
      String? name,
      String? type,
      String? dimension,
      List<String>? residents,
      String? url,
      DateTime? created}) {
    return _LocationModel(
      id: id,
      name: name,
      type: type,
      dimension: dimension,
      residents: residents,
      url: url,
      created: created,
    );
  }

  LocationModel fromJson(Map<String, Object?> json) {
    return LocationModel.fromJson(json);
  }
}

/// @nodoc
const $LocationModel = _$LocationModelTearOff();

/// @nodoc
mixin _$LocationModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get dimension => throw _privateConstructorUsedError;
  List<String>? get residents => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? type,
      String? dimension,
      List<String>? residents,
      String? url,
      DateTime? created});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  final LocationModel _value;
  // ignore: unused_field
  final $Res Function(LocationModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? dimension = freezed,
    Object? residents = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      dimension: dimension == freezed
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String?,
      residents: residents == freezed
          ? _value.residents
          : residents // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$LocationModelCopyWith(
          _LocationModel value, $Res Function(_LocationModel) then) =
      __$LocationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? type,
      String? dimension,
      List<String>? residents,
      String? url,
      DateTime? created});
}

/// @nodoc
class __$LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res>
    implements _$LocationModelCopyWith<$Res> {
  __$LocationModelCopyWithImpl(
      _LocationModel _value, $Res Function(_LocationModel) _then)
      : super(_value, (v) => _then(v as _LocationModel));

  @override
  _LocationModel get _value => super._value as _LocationModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? dimension = freezed,
    Object? residents = freezed,
    Object? url = freezed,
    Object? created = freezed,
  }) {
    return _then(_LocationModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      dimension: dimension == freezed
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String?,
      residents: residents == freezed
          ? _value.residents
          : residents // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModel implements _LocationModel {
  _$_LocationModel(
      {this.id,
      this.name,
      this.type,
      this.dimension,
      this.residents,
      this.url,
      this.created});

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? dimension;
  @override
  final List<String>? residents;
  @override
  final String? url;
  @override
  final DateTime? created;

  @override
  String toString() {
    return 'LocationModel(id: $id, name: $name, type: $type, dimension: $dimension, residents: $residents, url: $url, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.dimension, dimension) &&
            const DeepCollectionEquality().equals(other.residents, residents) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(dimension),
      const DeepCollectionEquality().hash(residents),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      __$LocationModelCopyWithImpl<_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelToJson(this);
  }
}

abstract class _LocationModel implements LocationModel {
  factory _LocationModel(
      {int? id,
      String? name,
      String? type,
      String? dimension,
      List<String>? residents,
      String? url,
      DateTime? created}) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get dimension;
  @override
  List<String>? get residents;
  @override
  String? get url;
  @override
  DateTime? get created;
  @override
  @JsonKey(ignore: true)
  _$LocationModelCopyWith<_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
