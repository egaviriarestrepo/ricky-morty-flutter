// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return _CharacterModel.fromJson(json);
}

/// @nodoc
class _$CharacterModelTearOff {
  const _$CharacterModelTearOff();

  _CharacterModel call(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      String? image,
      CharacterLocation? origin,
      CharacterLocation? location,
      List<String>? episode}) {
    return _CharacterModel(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      image: image,
      origin: origin,
      location: location,
      episode: episode,
    );
  }

  CharacterModel fromJson(Map<String, Object?> json) {
    return CharacterModel.fromJson(json);
  }
}

/// @nodoc
const $CharacterModel = _$CharacterModelTearOff();

/// @nodoc
mixin _$CharacterModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  CharacterLocation? get origin => throw _privateConstructorUsedError;
  CharacterLocation? get location => throw _privateConstructorUsedError;
  List<String>? get episode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterModelCopyWith<CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterModelCopyWith<$Res> {
  factory $CharacterModelCopyWith(
          CharacterModel value, $Res Function(CharacterModel) then) =
      _$CharacterModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      String? image,
      CharacterLocation? origin,
      CharacterLocation? location,
      List<String>? episode});

  $CharacterLocationCopyWith<$Res>? get origin;
  $CharacterLocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$CharacterModelCopyWithImpl<$Res>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._value, this._then);

  final CharacterModel _value;
  // ignore: unused_field
  final $Res Function(CharacterModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? image = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? episode = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as CharacterLocation?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CharacterLocation?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $CharacterLocationCopyWith<$Res>? get origin {
    if (_value.origin == null) {
      return null;
    }

    return $CharacterLocationCopyWith<$Res>(_value.origin!, (value) {
      return _then(_value.copyWith(origin: value));
    });
  }

  @override
  $CharacterLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $CharacterLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$CharacterModelCopyWith<$Res>
    implements $CharacterModelCopyWith<$Res> {
  factory _$CharacterModelCopyWith(
          _CharacterModel value, $Res Function(_CharacterModel) then) =
      __$CharacterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      String? image,
      CharacterLocation? origin,
      CharacterLocation? location,
      List<String>? episode});

  @override
  $CharacterLocationCopyWith<$Res>? get origin;
  @override
  $CharacterLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$CharacterModelCopyWithImpl<$Res>
    extends _$CharacterModelCopyWithImpl<$Res>
    implements _$CharacterModelCopyWith<$Res> {
  __$CharacterModelCopyWithImpl(
      _CharacterModel _value, $Res Function(_CharacterModel) _then)
      : super(_value, (v) => _then(v as _CharacterModel));

  @override
  _CharacterModel get _value => super._value as _CharacterModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? image = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? episode = freezed,
  }) {
    return _then(_CharacterModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as CharacterLocation?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CharacterLocation?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterModel
    with DiagnosticableTreeMixin
    implements _CharacterModel {
  _$_CharacterModel(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.image,
      this.origin,
      this.location,
      this.episode});

  factory _$_CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? species;
  @override
  final String? type;
  @override
  final String? gender;
  @override
  final String? image;
  @override
  final CharacterLocation? origin;
  @override
  final CharacterLocation? location;
  @override
  final List<String>? episode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharacterModel(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, image: $image, origin: $origin, location: $location, episode: $episode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharacterModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('species', species))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('origin', origin))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('episode', episode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CharacterModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.species, species) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.episode, episode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(species),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(episode));

  @JsonKey(ignore: true)
  @override
  _$CharacterModelCopyWith<_CharacterModel> get copyWith =>
      __$CharacterModelCopyWithImpl<_CharacterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterModelToJson(this);
  }
}

abstract class _CharacterModel implements CharacterModel {
  factory _CharacterModel(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      String? image,
      CharacterLocation? origin,
      CharacterLocation? location,
      List<String>? episode}) = _$_CharacterModel;

  factory _CharacterModel.fromJson(Map<String, dynamic> json) =
      _$_CharacterModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get status;
  @override
  String? get species;
  @override
  String? get type;
  @override
  String? get gender;
  @override
  String? get image;
  @override
  CharacterLocation? get origin;
  @override
  CharacterLocation? get location;
  @override
  List<String>? get episode;
  @override
  @JsonKey(ignore: true)
  _$CharacterModelCopyWith<_CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterLocation _$CharacterLocationFromJson(Map<String, dynamic> json) {
  return _CharacterLocation.fromJson(json);
}

/// @nodoc
class _$CharacterLocationTearOff {
  const _$CharacterLocationTearOff();

  _CharacterLocation call({String? name, String? url}) {
    return _CharacterLocation(
      name: name,
      url: url,
    );
  }

  CharacterLocation fromJson(Map<String, Object?> json) {
    return CharacterLocation.fromJson(json);
  }
}

/// @nodoc
const $CharacterLocation = _$CharacterLocationTearOff();

/// @nodoc
mixin _$CharacterLocation {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterLocationCopyWith<CharacterLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterLocationCopyWith<$Res> {
  factory $CharacterLocationCopyWith(
          CharacterLocation value, $Res Function(CharacterLocation) then) =
      _$CharacterLocationCopyWithImpl<$Res>;
  $Res call({String? name, String? url});
}

/// @nodoc
class _$CharacterLocationCopyWithImpl<$Res>
    implements $CharacterLocationCopyWith<$Res> {
  _$CharacterLocationCopyWithImpl(this._value, this._then);

  final CharacterLocation _value;
  // ignore: unused_field
  final $Res Function(CharacterLocation) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CharacterLocationCopyWith<$Res>
    implements $CharacterLocationCopyWith<$Res> {
  factory _$CharacterLocationCopyWith(
          _CharacterLocation value, $Res Function(_CharacterLocation) then) =
      __$CharacterLocationCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? url});
}

/// @nodoc
class __$CharacterLocationCopyWithImpl<$Res>
    extends _$CharacterLocationCopyWithImpl<$Res>
    implements _$CharacterLocationCopyWith<$Res> {
  __$CharacterLocationCopyWithImpl(
      _CharacterLocation _value, $Res Function(_CharacterLocation) _then)
      : super(_value, (v) => _then(v as _CharacterLocation));

  @override
  _CharacterLocation get _value => super._value as _CharacterLocation;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_CharacterLocation(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterLocation
    with DiagnosticableTreeMixin
    implements _CharacterLocation {
  _$_CharacterLocation({this.name, this.url});

  factory _$_CharacterLocation.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterLocationFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharacterLocation(name: $name, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharacterLocation'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CharacterLocation &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$CharacterLocationCopyWith<_CharacterLocation> get copyWith =>
      __$CharacterLocationCopyWithImpl<_CharacterLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterLocationToJson(this);
  }
}

abstract class _CharacterLocation implements CharacterLocation {
  factory _CharacterLocation({String? name, String? url}) =
      _$_CharacterLocation;

  factory _CharacterLocation.fromJson(Map<String, dynamic> json) =
      _$_CharacterLocation.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$CharacterLocationCopyWith<_CharacterLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
