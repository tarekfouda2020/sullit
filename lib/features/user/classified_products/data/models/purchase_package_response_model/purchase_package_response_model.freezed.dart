// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_package_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchasePackageResponseModel _$PurchasePackageResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PurchasePackageResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PurchasePackageResponseModel {
  String get key => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  TransactionModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchasePackageResponseModelCopyWith<PurchasePackageResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasePackageResponseModelCopyWith<$Res> {
  factory $PurchasePackageResponseModelCopyWith(
          PurchasePackageResponseModel value,
          $Res Function(PurchasePackageResponseModel) then) =
      _$PurchasePackageResponseModelCopyWithImpl<$Res,
          PurchasePackageResponseModel>;
  @useResult
  $Res call({String key, String msg, TransactionModel? data});

  $TransactionModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PurchasePackageResponseModelCopyWithImpl<$Res,
        $Val extends PurchasePackageResponseModel>
    implements $PurchasePackageResponseModelCopyWith<$Res> {
  _$PurchasePackageResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? msg = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransactionModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PurchasePackageResponseModelCopyWith<$Res>
    implements $PurchasePackageResponseModelCopyWith<$Res> {
  factory _$$_PurchasePackageResponseModelCopyWith(
          _$_PurchasePackageResponseModel value,
          $Res Function(_$_PurchasePackageResponseModel) then) =
      __$$_PurchasePackageResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String msg, TransactionModel? data});

  @override
  $TransactionModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_PurchasePackageResponseModelCopyWithImpl<$Res>
    extends _$PurchasePackageResponseModelCopyWithImpl<$Res,
        _$_PurchasePackageResponseModel>
    implements _$$_PurchasePackageResponseModelCopyWith<$Res> {
  __$$_PurchasePackageResponseModelCopyWithImpl(
      _$_PurchasePackageResponseModel _value,
      $Res Function(_$_PurchasePackageResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? msg = null,
    Object? data = freezed,
  }) {
    return _then(_$_PurchasePackageResponseModel(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PurchasePackageResponseModel extends _PurchasePackageResponseModel {
  const _$_PurchasePackageResponseModel(
      {required this.key, required this.msg, this.data})
      : super._();

  factory _$_PurchasePackageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PurchasePackageResponseModelFromJson(json);

  @override
  final String key;
  @override
  final String msg;
  @override
  final TransactionModel? data;

  @override
  String toString() {
    return 'PurchasePackageResponseModel(key: $key, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchasePackageResponseModel &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, msg, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchasePackageResponseModelCopyWith<_$_PurchasePackageResponseModel>
      get copyWith => __$$_PurchasePackageResponseModelCopyWithImpl<
          _$_PurchasePackageResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchasePackageResponseModelToJson(
      this,
    );
  }
}

abstract class _PurchasePackageResponseModel
    extends PurchasePackageResponseModel {
  const factory _PurchasePackageResponseModel(
      {required final String key,
      required final String msg,
      final TransactionModel? data}) = _$_PurchasePackageResponseModel;
  const _PurchasePackageResponseModel._() : super._();

  factory _PurchasePackageResponseModel.fromJson(Map<String, dynamic> json) =
      _$_PurchasePackageResponseModel.fromJson;

  @override
  String get key;
  @override
  String get msg;
  @override
  TransactionModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_PurchasePackageResponseModelCopyWith<_$_PurchasePackageResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
