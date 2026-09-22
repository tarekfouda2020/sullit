// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_media_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialMediaLoginModel _$SocialMediaLoginModelFromJson(
    Map<String, dynamic> json) {
  return _SocialMediaLoginModel.fromJson(json);
}

/// @nodoc
mixin _$SocialMediaLoginModel {
  String get name => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialMediaLoginModelCopyWith<SocialMediaLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialMediaLoginModelCopyWith<$Res> {
  factory $SocialMediaLoginModelCopyWith(SocialMediaLoginModel value,
          $Res Function(SocialMediaLoginModel) then) =
      _$SocialMediaLoginModelCopyWithImpl<$Res, SocialMediaLoginModel>;
  @useResult
  $Res call({String name, String provider, String logo});
}

/// @nodoc
class _$SocialMediaLoginModelCopyWithImpl<$Res,
        $Val extends SocialMediaLoginModel>
    implements $SocialMediaLoginModelCopyWith<$Res> {
  _$SocialMediaLoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? provider = null,
    Object? logo = null,
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
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocialMediaLoginModelCopyWith<$Res>
    implements $SocialMediaLoginModelCopyWith<$Res> {
  factory _$$_SocialMediaLoginModelCopyWith(_$_SocialMediaLoginModel value,
          $Res Function(_$_SocialMediaLoginModel) then) =
      __$$_SocialMediaLoginModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String provider, String logo});
}

/// @nodoc
class __$$_SocialMediaLoginModelCopyWithImpl<$Res>
    extends _$SocialMediaLoginModelCopyWithImpl<$Res, _$_SocialMediaLoginModel>
    implements _$$_SocialMediaLoginModelCopyWith<$Res> {
  __$$_SocialMediaLoginModelCopyWithImpl(_$_SocialMediaLoginModel _value,
      $Res Function(_$_SocialMediaLoginModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? provider = null,
    Object? logo = null,
  }) {
    return _then(_$_SocialMediaLoginModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SocialMediaLoginModel extends _SocialMediaLoginModel {
  _$_SocialMediaLoginModel(
      {required this.name, required this.provider, required this.logo})
      : super._();

  factory _$_SocialMediaLoginModel.fromJson(Map<String, dynamic> json) =>
      _$$_SocialMediaLoginModelFromJson(json);

  @override
  final String name;
  @override
  final String provider;
  @override
  final String logo;

  @override
  String toString() {
    return 'SocialMediaLoginModel(name: $name, provider: $provider, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialMediaLoginModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, provider, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialMediaLoginModelCopyWith<_$_SocialMediaLoginModel> get copyWith =>
      __$$_SocialMediaLoginModelCopyWithImpl<_$_SocialMediaLoginModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialMediaLoginModelToJson(
      this,
    );
  }
}

abstract class _SocialMediaLoginModel extends SocialMediaLoginModel {
  factory _SocialMediaLoginModel(
      {required final String name,
      required final String provider,
      required final String logo}) = _$_SocialMediaLoginModel;
  _SocialMediaLoginModel._() : super._();

  factory _SocialMediaLoginModel.fromJson(Map<String, dynamic> json) =
      _$_SocialMediaLoginModel.fromJson;

  @override
  String get name;
  @override
  String get provider;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$_SocialMediaLoginModelCopyWith<_$_SocialMediaLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}
