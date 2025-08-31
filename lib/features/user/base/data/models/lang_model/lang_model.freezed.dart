// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lang_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LangModel _$LangModelFromJson(Map<String, dynamic> json) {
  return _LangModel.fromJson(json);
}

/// @nodoc
mixin _$LangModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LangModelCopyWith<LangModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LangModelCopyWith<$Res> {
  factory $LangModelCopyWith(LangModel value, $Res Function(LangModel) then) =
      _$LangModelCopyWithImpl<$Res, LangModel>;
  @useResult
  $Res call({int id, String name, String code, String logo});
}

/// @nodoc
class _$LangModelCopyWithImpl<$Res, $Val extends LangModel>
    implements $LangModelCopyWith<$Res> {
  _$LangModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? logo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LangModelCopyWith<$Res> implements $LangModelCopyWith<$Res> {
  factory _$$_LangModelCopyWith(
          _$_LangModel value, $Res Function(_$_LangModel) then) =
      __$$_LangModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String code, String logo});
}

/// @nodoc
class __$$_LangModelCopyWithImpl<$Res>
    extends _$LangModelCopyWithImpl<$Res, _$_LangModel>
    implements _$$_LangModelCopyWith<$Res> {
  __$$_LangModelCopyWithImpl(
      _$_LangModel _value, $Res Function(_$_LangModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? logo = null,
  }) {
    return _then(_$_LangModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
class _$_LangModel extends _LangModel {
  const _$_LangModel(
      {required this.id,
      required this.name,
      required this.code,
      required this.logo})
      : super._();

  factory _$_LangModel.fromJson(Map<String, dynamic> json) =>
      _$$_LangModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String logo;

  @override
  String toString() {
    return 'LangModel(id: $id, name: $name, code: $code, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LangModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LangModelCopyWith<_$_LangModel> get copyWith =>
      __$$_LangModelCopyWithImpl<_$_LangModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LangModelToJson(
      this,
    );
  }
}

abstract class _LangModel extends LangModel {
  const factory _LangModel(
      {required final int id,
      required final String name,
      required final String code,
      required final String logo}) = _$_LangModel;
  const _LangModel._() : super._();

  factory _LangModel.fromJson(Map<String, dynamic> json) =
      _$_LangModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$_LangModelCopyWith<_$_LangModel> get copyWith =>
      throw _privateConstructorUsedError;
}
