// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episode_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EpisodeFilterModel _$EpisodeFilterModelFromJson(Map<String, dynamic> json) {
  return _EpisodeFilterModel.fromJson(json);
}

/// @nodoc
class _$EpisodeFilterModelTearOff {
  const _$EpisodeFilterModelTearOff();

  _EpisodeFilterModel call({int page = 1, String? name, String? episode}) {
    return _EpisodeFilterModel(
      page: page,
      name: name,
      episode: episode,
    );
  }

  EpisodeFilterModel fromJson(Map<String, Object?> json) {
    return EpisodeFilterModel.fromJson(json);
  }
}

/// @nodoc
const $EpisodeFilterModel = _$EpisodeFilterModelTearOff();

/// @nodoc
mixin _$EpisodeFilterModel {
  int get page => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get episode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeFilterModelCopyWith<EpisodeFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeFilterModelCopyWith<$Res> {
  factory $EpisodeFilterModelCopyWith(
          EpisodeFilterModel value, $Res Function(EpisodeFilterModel) then) =
      _$EpisodeFilterModelCopyWithImpl<$Res>;
  $Res call({int page, String? name, String? episode});
}

/// @nodoc
class _$EpisodeFilterModelCopyWithImpl<$Res>
    implements $EpisodeFilterModelCopyWith<$Res> {
  _$EpisodeFilterModelCopyWithImpl(this._value, this._then);

  final EpisodeFilterModel _value;
  // ignore: unused_field
  final $Res Function(EpisodeFilterModel) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? name = freezed,
    Object? episode = freezed,
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
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EpisodeFilterModelCopyWith<$Res>
    implements $EpisodeFilterModelCopyWith<$Res> {
  factory _$EpisodeFilterModelCopyWith(
          _EpisodeFilterModel value, $Res Function(_EpisodeFilterModel) then) =
      __$EpisodeFilterModelCopyWithImpl<$Res>;
  @override
  $Res call({int page, String? name, String? episode});
}

/// @nodoc
class __$EpisodeFilterModelCopyWithImpl<$Res>
    extends _$EpisodeFilterModelCopyWithImpl<$Res>
    implements _$EpisodeFilterModelCopyWith<$Res> {
  __$EpisodeFilterModelCopyWithImpl(
      _EpisodeFilterModel _value, $Res Function(_EpisodeFilterModel) _then)
      : super(_value, (v) => _then(v as _EpisodeFilterModel));

  @override
  _EpisodeFilterModel get _value => super._value as _EpisodeFilterModel;

  @override
  $Res call({
    Object? page = freezed,
    Object? name = freezed,
    Object? episode = freezed,
  }) {
    return _then(_EpisodeFilterModel(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EpisodeFilterModel implements _EpisodeFilterModel {
  _$_EpisodeFilterModel({this.page = 1, this.name, this.episode});

  factory _$_EpisodeFilterModel.fromJson(Map<String, dynamic> json) =>
      _$$_EpisodeFilterModelFromJson(json);

  @JsonKey()
  @override
  final int page;
  @override
  final String? name;
  @override
  final String? episode;

  @override
  String toString() {
    return 'EpisodeFilterModel(page: $page, name: $name, episode: $episode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EpisodeFilterModel &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.episode, episode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(episode));

  @JsonKey(ignore: true)
  @override
  _$EpisodeFilterModelCopyWith<_EpisodeFilterModel> get copyWith =>
      __$EpisodeFilterModelCopyWithImpl<_EpisodeFilterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpisodeFilterModelToJson(this);
  }
}

abstract class _EpisodeFilterModel implements EpisodeFilterModel {
  factory _EpisodeFilterModel({int page, String? name, String? episode}) =
      _$_EpisodeFilterModel;

  factory _EpisodeFilterModel.fromJson(Map<String, dynamic> json) =
      _$_EpisodeFilterModel.fromJson;

  @override
  int get page;
  @override
  String? get name;
  @override
  String? get episode;
  @override
  @JsonKey(ignore: true)
  _$EpisodeFilterModelCopyWith<_EpisodeFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
