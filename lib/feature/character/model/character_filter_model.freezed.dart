// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterFilterModel _$CharacterFilterModelFromJson(Map<String, dynamic> json) {
  return _CharacterFilterModel.fromJson(json);
}

/// @nodoc
class _$CharacterFilterModelTearOff {
  const _$CharacterFilterModelTearOff();

  _CharacterFilterModel call(
      {String? name,
      CharacterStatus? status,
      CharacterSpecies? species,
      String? type,
      CharacterGender? gender,
      int page = 1}) {
    return _CharacterFilterModel(
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      page: page,
    );
  }

  CharacterFilterModel fromJson(Map<String, Object?> json) {
    return CharacterFilterModel.fromJson(json);
  }
}

/// @nodoc
const $CharacterFilterModel = _$CharacterFilterModelTearOff();

/// @nodoc
mixin _$CharacterFilterModel {
  String? get name => throw _privateConstructorUsedError;
  CharacterStatus? get status => throw _privateConstructorUsedError;
  CharacterSpecies? get species => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  CharacterGender? get gender => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterFilterModelCopyWith<CharacterFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterFilterModelCopyWith<$Res> {
  factory $CharacterFilterModelCopyWith(CharacterFilterModel value,
          $Res Function(CharacterFilterModel) then) =
      _$CharacterFilterModelCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      CharacterStatus? status,
      CharacterSpecies? species,
      String? type,
      CharacterGender? gender,
      int page});
}

/// @nodoc
class _$CharacterFilterModelCopyWithImpl<$Res>
    implements $CharacterFilterModelCopyWith<$Res> {
  _$CharacterFilterModelCopyWithImpl(this._value, this._then);

  final CharacterFilterModel _value;
  // ignore: unused_field
  final $Res Function(CharacterFilterModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterStatus?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as CharacterSpecies?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CharacterGender?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CharacterFilterModelCopyWith<$Res>
    implements $CharacterFilterModelCopyWith<$Res> {
  factory _$CharacterFilterModelCopyWith(_CharacterFilterModel value,
          $Res Function(_CharacterFilterModel) then) =
      __$CharacterFilterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      CharacterStatus? status,
      CharacterSpecies? species,
      String? type,
      CharacterGender? gender,
      int page});
}

/// @nodoc
class __$CharacterFilterModelCopyWithImpl<$Res>
    extends _$CharacterFilterModelCopyWithImpl<$Res>
    implements _$CharacterFilterModelCopyWith<$Res> {
  __$CharacterFilterModelCopyWithImpl(
      _CharacterFilterModel _value, $Res Function(_CharacterFilterModel) _then)
      : super(_value, (v) => _then(v as _CharacterFilterModel));

  @override
  _CharacterFilterModel get _value => super._value as _CharacterFilterModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? page = freezed,
  }) {
    return _then(_CharacterFilterModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterStatus?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as CharacterSpecies?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CharacterGender?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterFilterModel
    with DiagnosticableTreeMixin
    implements _CharacterFilterModel {
  _$_CharacterFilterModel(
      {this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.page = 1});

  factory _$_CharacterFilterModel.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterFilterModelFromJson(json);

  @override
  final String? name;
  @override
  final CharacterStatus? status;
  @override
  final CharacterSpecies? species;
  @override
  final String? type;
  @override
  final CharacterGender? gender;
  @JsonKey()
  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharacterFilterModel(name: $name, status: $status, species: $species, type: $type, gender: $gender, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharacterFilterModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('species', species))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CharacterFilterModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.species, species) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(species),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$CharacterFilterModelCopyWith<_CharacterFilterModel> get copyWith =>
      __$CharacterFilterModelCopyWithImpl<_CharacterFilterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterFilterModelToJson(this);
  }
}

abstract class _CharacterFilterModel implements CharacterFilterModel {
  factory _CharacterFilterModel(
      {String? name,
      CharacterStatus? status,
      CharacterSpecies? species,
      String? type,
      CharacterGender? gender,
      int page}) = _$_CharacterFilterModel;

  factory _CharacterFilterModel.fromJson(Map<String, dynamic> json) =
      _$_CharacterFilterModel.fromJson;

  @override
  String? get name;
  @override
  CharacterStatus? get status;
  @override
  CharacterSpecies? get species;
  @override
  String? get type;
  @override
  CharacterGender? get gender;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$CharacterFilterModelCopyWith<_CharacterFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
