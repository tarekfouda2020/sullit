// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insurance_company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InsuranceCompanyModel _$InsuranceCompanyModelFromJson(
    Map<String, dynamic> json) {
  return _InsuranceCompanyModel.fromJson(json);
}

/// @nodoc
mixin _$InsuranceCompanyModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsuranceCompanyModelCopyWith<InsuranceCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceCompanyModelCopyWith<$Res> {
  factory $InsuranceCompanyModelCopyWith(InsuranceCompanyModel value,
          $Res Function(InsuranceCompanyModel) then) =
      _$InsuranceCompanyModelCopyWithImpl<$Res, InsuranceCompanyModel>;
  @useResult
  $Res call({int id, String name, String code, String logo});
}

/// @nodoc
class _$InsuranceCompanyModelCopyWithImpl<$Res,
        $Val extends InsuranceCompanyModel>
    implements $InsuranceCompanyModelCopyWith<$Res> {
  _$InsuranceCompanyModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_InsuranceCompanyModelCopyWith<$Res>
    implements $InsuranceCompanyModelCopyWith<$Res> {
  factory _$$_InsuranceCompanyModelCopyWith(_$_InsuranceCompanyModel value,
          $Res Function(_$_InsuranceCompanyModel) then) =
      __$$_InsuranceCompanyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String code, String logo});
}

/// @nodoc
class __$$_InsuranceCompanyModelCopyWithImpl<$Res>
    extends _$InsuranceCompanyModelCopyWithImpl<$Res, _$_InsuranceCompanyModel>
    implements _$$_InsuranceCompanyModelCopyWith<$Res> {
  __$$_InsuranceCompanyModelCopyWithImpl(_$_InsuranceCompanyModel _value,
      $Res Function(_$_InsuranceCompanyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? logo = null,
  }) {
    return _then(_$_InsuranceCompanyModel(
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
class _$_InsuranceCompanyModel extends _InsuranceCompanyModel {
  const _$_InsuranceCompanyModel(
      {required this.id,
      required this.name,
      required this.code,
      required this.logo})
      : super._();

  factory _$_InsuranceCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$$_InsuranceCompanyModelFromJson(json);

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
    return 'InsuranceCompanyModel(id: $id, name: $name, code: $code, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsuranceCompanyModel &&
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
  _$$_InsuranceCompanyModelCopyWith<_$_InsuranceCompanyModel> get copyWith =>
      __$$_InsuranceCompanyModelCopyWithImpl<_$_InsuranceCompanyModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsuranceCompanyModelToJson(
      this,
    );
  }
}

abstract class _InsuranceCompanyModel extends InsuranceCompanyModel {
  const factory _InsuranceCompanyModel(
      {required final int id,
      required final String name,
      required final String code,
      required final String logo}) = _$_InsuranceCompanyModel;
  const _InsuranceCompanyModel._() : super._();

  factory _InsuranceCompanyModel.fromJson(Map<String, dynamic> json) =
      _$_InsuranceCompanyModel.fromJson;

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
  _$$_InsuranceCompanyModelCopyWith<_$_InsuranceCompanyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
