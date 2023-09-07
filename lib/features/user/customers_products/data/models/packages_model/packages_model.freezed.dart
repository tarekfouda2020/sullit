// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packages_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackagesModel _$PackagesModelFromJson(Map<String, dynamic> json) {
  return _PackagesModel.fromJson(json);
}

/// @nodoc
mixin _$PackagesModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo')
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_free')
  bool get isFree => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_upload')
  int get productUpload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackagesModelCopyWith<PackagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesModelCopyWith<$Res> {
  factory $PackagesModelCopyWith(
          PackagesModel value, $Res Function(PackagesModel) then) =
      _$PackagesModelCopyWithImpl<$Res, PackagesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'logo') String logo,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'product_upload') int productUpload});
}

/// @nodoc
class _$PackagesModelCopyWithImpl<$Res, $Val extends PackagesModel>
    implements $PackagesModelCopyWith<$Res> {
  _$PackagesModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_PackagesModelCopyWith<$Res>
    implements $PackagesModelCopyWith<$Res> {
  factory _$$_PackagesModelCopyWith(
          _$_PackagesModel value, $Res Function(_$_PackagesModel) then) =
      __$$_PackagesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'logo') String logo,
      @JsonKey(name: 'is_free') bool isFree,
      @JsonKey(name: 'amount') String amount,
      @JsonKey(name: 'product_upload') int productUpload});
}

/// @nodoc
class __$$_PackagesModelCopyWithImpl<$Res>
    extends _$PackagesModelCopyWithImpl<$Res, _$_PackagesModel>
    implements _$$_PackagesModelCopyWith<$Res> {
  __$$_PackagesModelCopyWithImpl(
      _$_PackagesModel _value, $Res Function(_$_PackagesModel) _then)
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
    return _then(_$_PackagesModel(
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
class _$_PackagesModel extends _PackagesModel {
  const _$_PackagesModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'logo') required this.logo,
      @JsonKey(name: 'is_free') required this.isFree,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'product_upload') required this.productUpload})
      : super._();

  factory _$_PackagesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PackagesModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'logo')
  final String logo;
  @override
  @JsonKey(name: 'is_free')
  final bool isFree;
  @override
  @JsonKey(name: 'amount')
  final String amount;
  @override
  @JsonKey(name: 'product_upload')
  final int productUpload;

  @override
  String toString() {
    return 'PackagesModel(id: $id, name: $name, logo: $logo, isFree: $isFree, amount: $amount, productUpload: $productUpload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackagesModel &&
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
  _$$_PackagesModelCopyWith<_$_PackagesModel> get copyWith =>
      __$$_PackagesModelCopyWithImpl<_$_PackagesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackagesModelToJson(
      this,
    );
  }
}

abstract class _PackagesModel extends PackagesModel {
  const factory _PackagesModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'logo') required final String logo,
          @JsonKey(name: 'is_free') required final bool isFree,
          @JsonKey(name: 'amount') required final String amount,
          @JsonKey(name: 'product_upload') required final int productUpload}) =
      _$_PackagesModel;
  const _PackagesModel._() : super._();

  factory _PackagesModel.fromJson(Map<String, dynamic> json) =
      _$_PackagesModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'logo')
  String get logo;
  @override
  @JsonKey(name: 'is_free')
  bool get isFree;
  @override
  @JsonKey(name: 'amount')
  String get amount;
  @override
  @JsonKey(name: 'product_upload')
  int get productUpload;
  @override
  @JsonKey(ignore: true)
  _$$_PackagesModelCopyWith<_$_PackagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
