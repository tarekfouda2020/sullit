// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_provider_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoProviderModel _$VideoProviderModelFromJson(Map<String, dynamic> json) {
  return _VideoProviderModel.fromJson(json);
}

/// @nodoc
mixin _$VideoProviderModel {
  String get name => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoProviderModelCopyWith<VideoProviderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoProviderModelCopyWith<$Res> {
  factory $VideoProviderModelCopyWith(
          VideoProviderModel value, $Res Function(VideoProviderModel) then) =
      _$VideoProviderModelCopyWithImpl<$Res, VideoProviderModel>;
  @useResult
  $Res call({String name, String provider});
}

/// @nodoc
class _$VideoProviderModelCopyWithImpl<$Res, $Val extends VideoProviderModel>
    implements $VideoProviderModelCopyWith<$Res> {
  _$VideoProviderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? provider = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoProviderModelCopyWith<$Res>
    implements $VideoProviderModelCopyWith<$Res> {
  factory _$$_VideoProviderModelCopyWith(_$_VideoProviderModel value,
          $Res Function(_$_VideoProviderModel) then) =
      __$$_VideoProviderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String provider});
}

/// @nodoc
class __$$_VideoProviderModelCopyWithImpl<$Res>
    extends _$VideoProviderModelCopyWithImpl<$Res, _$_VideoProviderModel>
    implements _$$_VideoProviderModelCopyWith<$Res> {
  __$$_VideoProviderModelCopyWithImpl(
      _$_VideoProviderModel _value, $Res Function(_$_VideoProviderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? provider = null,
  }) {
    return _then(_$_VideoProviderModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_VideoProviderModel extends _VideoProviderModel {
  const _$_VideoProviderModel({required this.name, required this.provider})
      : super._();

  factory _$_VideoProviderModel.fromJson(Map<String, dynamic> json) =>
      _$$_VideoProviderModelFromJson(json);

  @override
  final String name;
  @override
  final String provider;

  @override
  String toString() {
    return 'VideoProviderModel(name: $name, provider: $provider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoProviderModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, provider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoProviderModelCopyWith<_$_VideoProviderModel> get copyWith =>
      __$$_VideoProviderModelCopyWithImpl<_$_VideoProviderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoProviderModelToJson(
      this,
    );
  }
}

abstract class _VideoProviderModel extends VideoProviderModel {
  const factory _VideoProviderModel(
      {required final String name,
      required final String provider}) = _$_VideoProviderModel;
  const _VideoProviderModel._() : super._();

  factory _VideoProviderModel.fromJson(Map<String, dynamic> json) =
      _$_VideoProviderModel.fromJson;

  @override
  String get name;
  @override
  String get provider;
  @override
  @JsonKey(ignore: true)
  _$$_VideoProviderModelCopyWith<_$_VideoProviderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
