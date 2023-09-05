// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderResponseModel _$OrderResponseModelFromJson(Map<String, dynamic> json) {
  return _OrderResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OrderResponseModel {
  String get key => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  OrderSummaryModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderResponseModelCopyWith<OrderResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseModelCopyWith<$Res> {
  factory $OrderResponseModelCopyWith(
          OrderResponseModel value, $Res Function(OrderResponseModel) then) =
      _$OrderResponseModelCopyWithImpl<$Res, OrderResponseModel>;
  @useResult
  $Res call({String key, String msg, OrderSummaryModel data});

  $OrderSummaryModelCopyWith<$Res> get data;
}

/// @nodoc
class _$OrderResponseModelCopyWithImpl<$Res, $Val extends OrderResponseModel>
    implements $OrderResponseModelCopyWith<$Res> {
  _$OrderResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? msg = null,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderSummaryModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderSummaryModelCopyWith<$Res> get data {
    return $OrderSummaryModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderResponseModelCopyWith<$Res>
    implements $OrderResponseModelCopyWith<$Res> {
  factory _$$_OrderResponseModelCopyWith(_$_OrderResponseModel value,
          $Res Function(_$_OrderResponseModel) then) =
      __$$_OrderResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String msg, OrderSummaryModel data});

  @override
  $OrderSummaryModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_OrderResponseModelCopyWithImpl<$Res>
    extends _$OrderResponseModelCopyWithImpl<$Res, _$_OrderResponseModel>
    implements _$$_OrderResponseModelCopyWith<$Res> {
  __$$_OrderResponseModelCopyWithImpl(
      _$_OrderResponseModel _value, $Res Function(_$_OrderResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$_OrderResponseModel(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderSummaryModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderResponseModel extends _OrderResponseModel {
  const _$_OrderResponseModel(
      {required this.key, required this.msg, required this.data})
      : super._();

  factory _$_OrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderResponseModelFromJson(json);

  @override
  final String key;
  @override
  final String msg;
  @override
  final OrderSummaryModel data;

  @override
  String toString() {
    return 'OrderResponseModel(key: $key, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderResponseModel &&
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
  _$$_OrderResponseModelCopyWith<_$_OrderResponseModel> get copyWith =>
      __$$_OrderResponseModelCopyWithImpl<_$_OrderResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderResponseModelToJson(
      this,
    );
  }
}

abstract class _OrderResponseModel extends OrderResponseModel {
  const factory _OrderResponseModel(
      {required final String key,
      required final String msg,
      required final OrderSummaryModel data}) = _$_OrderResponseModel;
  const _OrderResponseModel._() : super._();

  factory _OrderResponseModel.fromJson(Map<String, dynamic> json) =
      _$_OrderResponseModel.fromJson;

  @override
  String get key;
  @override
  String get msg;
  @override
  OrderSummaryModel get data;
  @override
  @JsonKey(ignore: true)
  _$$_OrderResponseModelCopyWith<_$_OrderResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
