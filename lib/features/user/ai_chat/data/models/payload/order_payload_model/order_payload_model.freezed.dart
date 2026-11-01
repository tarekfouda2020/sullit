// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderPayloadModel _$OrderPayloadModelFromJson(Map<String, dynamic> json) {
  return _OrderPayloadModel.fromJson(json);
}

/// @nodoc
mixin _$OrderPayloadModel {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_status')
  String? get deliveryStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_text')
  String? get paymentStatusText => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_by_name')
  String? get soldByName => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  String? get orderStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderPayloadModelCopyWith<OrderPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPayloadModelCopyWith<$Res> {
  factory $OrderPayloadModelCopyWith(
          OrderPayloadModel value, $Res Function(OrderPayloadModel) then) =
      _$OrderPayloadModelCopyWithImpl<$Res, OrderPayloadModel>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: 'delivery_status') String? deliveryStatus,
      @JsonKey(name: 'payment_status_text') String? paymentStatusText,
      String? total,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'sold_by_name') String? soldByName,
      @JsonKey(name: 'order_status') String? orderStatus});
}

/// @nodoc
class _$OrderPayloadModelCopyWithImpl<$Res, $Val extends OrderPayloadModel>
    implements $OrderPayloadModelCopyWith<$Res> {
  _$OrderPayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? deliveryStatus = freezed,
    Object? paymentStatusText = freezed,
    Object? total = freezed,
    Object? currencySymbol = freezed,
    Object? soldByName = freezed,
    Object? orderStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatusText: freezed == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      soldByName: freezed == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderPayloadModelCopyWith<$Res>
    implements $OrderPayloadModelCopyWith<$Res> {
  factory _$$_OrderPayloadModelCopyWith(_$_OrderPayloadModel value,
          $Res Function(_$_OrderPayloadModel) then) =
      __$$_OrderPayloadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: 'delivery_status') String? deliveryStatus,
      @JsonKey(name: 'payment_status_text') String? paymentStatusText,
      String? total,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'sold_by_name') String? soldByName,
      @JsonKey(name: 'order_status') String? orderStatus});
}

/// @nodoc
class __$$_OrderPayloadModelCopyWithImpl<$Res>
    extends _$OrderPayloadModelCopyWithImpl<$Res, _$_OrderPayloadModel>
    implements _$$_OrderPayloadModelCopyWith<$Res> {
  __$$_OrderPayloadModelCopyWithImpl(
      _$_OrderPayloadModel _value, $Res Function(_$_OrderPayloadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? deliveryStatus = freezed,
    Object? paymentStatusText = freezed,
    Object? total = freezed,
    Object? currencySymbol = freezed,
    Object? soldByName = freezed,
    Object? orderStatus = freezed,
  }) {
    return _then(_$_OrderPayloadModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryStatus: freezed == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatusText: freezed == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      soldByName: freezed == soldByName
          ? _value.soldByName
          : soldByName // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderPayloadModel extends _OrderPayloadModel {
  const _$_OrderPayloadModel(
      {this.id,
      this.code,
      @JsonKey(name: 'delivery_status') this.deliveryStatus,
      @JsonKey(name: 'payment_status_text') this.paymentStatusText,
      this.total,
      @JsonKey(name: 'currency_symbol') this.currencySymbol,
      @JsonKey(name: 'sold_by_name') this.soldByName,
      @JsonKey(name: 'order_status') this.orderStatus})
      : super._();

  factory _$_OrderPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderPayloadModelFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  @JsonKey(name: 'delivery_status')
  final String? deliveryStatus;
  @override
  @JsonKey(name: 'payment_status_text')
  final String? paymentStatusText;
  @override
  final String? total;
  @override
  @JsonKey(name: 'currency_symbol')
  final String? currencySymbol;
  @override
  @JsonKey(name: 'sold_by_name')
  final String? soldByName;
  @override
  @JsonKey(name: 'order_status')
  final String? orderStatus;

  @override
  String toString() {
    return 'OrderPayloadModel(id: $id, code: $code, deliveryStatus: $deliveryStatus, paymentStatusText: $paymentStatusText, total: $total, currencySymbol: $currencySymbol, soldByName: $soldByName, orderStatus: $orderStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderPayloadModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.paymentStatusText, paymentStatusText) ||
                other.paymentStatusText == paymentStatusText) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.soldByName, soldByName) ||
                other.soldByName == soldByName) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, deliveryStatus,
      paymentStatusText, total, currencySymbol, soldByName, orderStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderPayloadModelCopyWith<_$_OrderPayloadModel> get copyWith =>
      __$$_OrderPayloadModelCopyWithImpl<_$_OrderPayloadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderPayloadModelToJson(
      this,
    );
  }
}

abstract class _OrderPayloadModel extends OrderPayloadModel {
  const factory _OrderPayloadModel(
          {final int? id,
          final String? code,
          @JsonKey(name: 'delivery_status') final String? deliveryStatus,
          @JsonKey(name: 'payment_status_text') final String? paymentStatusText,
          final String? total,
          @JsonKey(name: 'currency_symbol') final String? currencySymbol,
          @JsonKey(name: 'sold_by_name') final String? soldByName,
          @JsonKey(name: 'order_status') final String? orderStatus}) =
      _$_OrderPayloadModel;
  const _OrderPayloadModel._() : super._();

  factory _OrderPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_OrderPayloadModel.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  @JsonKey(name: 'delivery_status')
  String? get deliveryStatus;
  @override
  @JsonKey(name: 'payment_status_text')
  String? get paymentStatusText;
  @override
  String? get total;
  @override
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol;
  @override
  @JsonKey(name: 'sold_by_name')
  String? get soldByName;
  @override
  @JsonKey(name: 'order_status')
  String? get orderStatus;
  @override
  @JsonKey(ignore: true)
  _$$_OrderPayloadModelCopyWith<_$_OrderPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
