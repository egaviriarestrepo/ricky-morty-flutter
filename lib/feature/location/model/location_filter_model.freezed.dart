// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationFilterModel _$LocationFilterModelFromJson(Map<String, dynamic> json) {
  return _LocationFilterModel.fromJson(json);
}

/// @nodoc
class _$LocationFilterModelTearOff {
  const _$LocationFilterModelTearOff();

  _LocationFilterModel call({int page = 1, String? name, String? location}) {
    return _LocationFilterModel(
      page: page,
      name: name,
      location: location,
    );
  }

  LocationFilterModel fromJson(Map<String, Object?> json) {
    return LocationFilterModel.fromJson(json);
  }
}

/// @nodoc
const $LocationFilterModel = _$LocationFilterModelTearOff();

/// @nodoc
mixin _$LocationFilterModel {
  int get page => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationFilterModelCopyWith<LocationFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationFilterModelCopyWith<$Res> {
  factory $LocationFilterModelCopyWith(
          LocationFilterModel value, $Res Function(LocationFilterModel) then) =
      _$LocationFilterModelCopyWithImpl<$Res>;
  $Res call({int page, String? name, String? location});
}

/// @nodoc
class _$LocationFilterModelCopyWithImpl<$Res>
    implements $LocationFilterModelCopyWith<$Res> {
  _$LocationFilterModelCopyWithImpl(this._value, this._then);

  final LocationFilterModel _value;
  // ignore: unused_field
  final $Res Function(LocationFilterModel) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? name = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LocationFilterModelCopyWith<$Res>
    implements $LocationFilterModelCopyWith<$Res> {
  factory _$LocationFilterModelCopyWith(_LocationFilterModel value,
          $Res Function(_LocationFilterModel) then) =
      __$LocationFilterModelCopyWithImpl<$Res>;
  @override
  $Res call({int page, String? name, String? location});
}

/// @nodoc
class __$LocationFilterModelCopyWithImpl<$Res>
    extends _$LocationFilterModelCopyWithImpl<$Res>
    implements _$LocationFilterModelCopyWith<$Res> {
  __$LocationFilterModelCopyWithImpl(
      _LocationFilterModel _value, $Res Function(_LocationFilterModel) _then)
      : super(_value, (v) => _then(v as _LocationFilterModel));

  @override
  _LocationFilterModel get _value => super._value as _LocationFilterModel;

  @override
  $Res call({
    Object? page = freezed,
    Object? name = freezed,
    Object? location = freezed,
  }) {
    return _then(_LocationFilterModel(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationFilterModel implements _LocationFilterModel {
  _$_LocationFilterModel({this.page = 1, this.name, this.location});

  factory _$_LocationFilterModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFilterModelFromJson(json);

  @JsonKey()
  @override
  final int page;
  @override
  final String? name;
  @override
  final String? location;

  @override
  String toString() {
    return 'LocationFilterModel(page: $page, name: $name, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationFilterModel &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$LocationFilterModelCopyWith<_LocationFilterModel> get copyWith =>
      __$LocationFilterModelCopyWithImpl<_LocationFilterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationFilterModelToJson(this);
  }
}

abstract class _LocationFilterModel implements LocationFilterModel {
  factory _LocationFilterModel({int page, String? name, String? location}) =
      _$_LocationFilterModel;

  factory _LocationFilterModel.fromJson(Map<String, dynamic> json) =
      _$_LocationFilterModel.fromJson;

  @override
  int get page;
  @override
  String? get name;
  @override
  String? get location;
  @override
  @JsonKey(ignore: true)
  _$LocationFilterModelCopyWith<_LocationFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
