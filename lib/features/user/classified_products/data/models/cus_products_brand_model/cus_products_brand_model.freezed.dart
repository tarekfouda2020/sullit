// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_products_brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CusProductsBrandModel _$CusProductsBrandModelFromJson(
    Map<String, dynamic> json) {
  return _CusProductsBrandModel.fromJson(json);
}

/// @nodoc
mixin _$CusProductsBrandModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CusProductsBrandModelCopyWith<CusProductsBrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusProductsBrandModelCopyWith<$Res> {
  factory $CusProductsBrandModelCopyWith(CusProductsBrandModel value,
          $Res Function(CusProductsBrandModel) then) =
      _$CusProductsBrandModelCopyWithImpl<$Res, CusProductsBrandModel>;
  @useResult
  $Res call({int id, String name, String logo});
}

/// @nodoc
class _$CusProductsBrandModelCopyWithImpl<$Res,
        $Val extends CusProductsBrandModel>
    implements $CusProductsBrandModelCopyWith<$Res> {
  _$CusProductsBrandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CusProductsBrandModelCopyWith<$Res>
    implements $CusProductsBrandModelCopyWith<$Res> {
  factory _$$_CusProductsBrandModelCopyWith(_$_CusProductsBrandModel value,
          $Res Function(_$_CusProductsBrandModel) then) =
      __$$_CusProductsBrandModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String logo});
}

/// @nodoc
class __$$_CusProductsBrandModelCopyWithImpl<$Res>
    extends _$CusProductsBrandModelCopyWithImpl<$Res, _$_CusProductsBrandModel>
    implements _$$_CusProductsBrandModelCopyWith<$Res> {
  __$$_CusProductsBrandModelCopyWithImpl(_$_CusProductsBrandModel _value,
      $Res Function(_$_CusProductsBrandModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
  }) {
    return _then(_$_CusProductsBrandModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$_CusProductsBrandModel extends _CusProductsBrandModel {
  const _$_CusProductsBrandModel(
      {required this.id, required this.name, required this.logo})
      : super._();

  factory _$_CusProductsBrandModel.fromJson(Map<String, dynamic> json) =>
      _$$_CusProductsBrandModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String logo;

  @override
  String toString() {
    return 'CusProductsBrandModel(id: $id, name: $name, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CusProductsBrandModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CusProductsBrandModelCopyWith<_$_CusProductsBrandModel> get copyWith =>
      __$$_CusProductsBrandModelCopyWithImpl<_$_CusProductsBrandModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CusProductsBrandModelToJson(
      this,
    );
  }
}

abstract class _CusProductsBrandModel extends CusProductsBrandModel {
  const factory _CusProductsBrandModel(
      {required final int id,
      required final String name,
      required final String logo}) = _$_CusProductsBrandModel;
  const _CusProductsBrandModel._() : super._();

  factory _CusProductsBrandModel.fromJson(Map<String, dynamic> json) =
      _$_CusProductsBrandModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$_CusProductsBrandModelCopyWith<_$_CusProductsBrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}
