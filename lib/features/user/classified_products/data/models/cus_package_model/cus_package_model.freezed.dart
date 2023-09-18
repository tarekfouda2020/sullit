// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CusPackageModel _$CusPackageModelFromJson(Map<String, dynamic> json) {
  return _CusPackageModel.fromJson(json);
}

/// @nodoc
mixin _$CusPackageModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_free')
  bool get isFree => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_upload')
  int get productUpload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CusPackageModelCopyWith<CusPackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusPackageModelCopyWith<$Res> {
  factory $CusPackageModelCopyWith(
          CusPackageModel value, $Res Function(CusPackageModel) then) =
      _$CusPackageModelCopyWithImpl<$Res, CusPackageModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String logo,
      @JsonKey(name: 'is_free') bool isFree,
      String amount,
      @JsonKey(name: 'product_upload') int productUpload});
}

/// @nodoc
class _$CusPackageModelCopyWithImpl<$Res, $Val extends CusPackageModel>
    implements $CusPackageModelCopyWith<$Res> {
  _$CusPackageModelCopyWithImpl(this._value, this._then);

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
    Object? isFree = null,
    Object? amount = null,
    Object? productUpload = null,
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
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      productUpload: null == productUpload
          ? _value.productUpload
          : productUpload // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CusPackageModelCopyWith<$Res>
    implements $CusPackageModelCopyWith<$Res> {
  factory _$$_CusPackageModelCopyWith(
          _$_CusPackageModel value, $Res Function(_$_CusPackageModel) then) =
      __$$_CusPackageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String logo,
      @JsonKey(name: 'is_free') bool isFree,
      String amount,
      @JsonKey(name: 'product_upload') int productUpload});
}

/// @nodoc
class __$$_CusPackageModelCopyWithImpl<$Res>
    extends _$CusPackageModelCopyWithImpl<$Res, _$_CusPackageModel>
    implements _$$_CusPackageModelCopyWith<$Res> {
  __$$_CusPackageModelCopyWithImpl(
      _$_CusPackageModel _value, $Res Function(_$_CusPackageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
    Object? isFree = null,
    Object? amount = null,
    Object? productUpload = null,
  }) {
    return _then(_$_CusPackageModel(
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
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      productUpload: null == productUpload
          ? _value.productUpload
          : productUpload // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CusPackageModel extends _CusPackageModel {
  const _$_CusPackageModel(
      {required this.id,
      required this.name,
      required this.logo,
      @JsonKey(name: 'is_free') required this.isFree,
      required this.amount,
      @JsonKey(name: 'product_upload') required this.productUpload})
      : super._();

  factory _$_CusPackageModel.fromJson(Map<String, dynamic> json) =>
      _$$_CusPackageModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String logo;
  @override
  @JsonKey(name: 'is_free')
  final bool isFree;
  @override
  final String amount;
  @override
  @JsonKey(name: 'product_upload')
  final int productUpload;

  @override
  String toString() {
    return 'CusPackageModel(id: $id, name: $name, logo: $logo, isFree: $isFree, amount: $amount, productUpload: $productUpload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CusPackageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.isFree, isFree) || other.isFree == isFree) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.productUpload, productUpload) ||
                other.productUpload == productUpload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, logo, isFree, amount, productUpload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CusPackageModelCopyWith<_$_CusPackageModel> get copyWith =>
      __$$_CusPackageModelCopyWithImpl<_$_CusPackageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CusPackageModelToJson(
      this,
    );
  }
}

abstract class _CusPackageModel extends CusPackageModel {
  const factory _CusPackageModel(
          {required final int id,
          required final String name,
          required final String logo,
          @JsonKey(name: 'is_free') required final bool isFree,
          required final String amount,
          @JsonKey(name: 'product_upload') required final int productUpload}) =
      _$_CusPackageModel;
  const _CusPackageModel._() : super._();

  factory _CusPackageModel.fromJson(Map<String, dynamic> json) =
      _$_CusPackageModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get logo;
  @override
  @JsonKey(name: 'is_free')
  bool get isFree;
  @override
  String get amount;
  @override
  @JsonKey(name: 'product_upload')
  int get productUpload;
  @override
  @JsonKey(ignore: true)
  _$$_CusPackageModelCopyWith<_$_CusPackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
