// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
part of 'order_payload_model.dart';

final _privateConstructorUsedError = UnsupportedError('freezed');

OrderPayloadModel _$OrderPayloadModelFromJson(Map<String, dynamic> json) {
  return _OrderPayloadModel.fromJson(json);
}

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
}

@JsonSerializable(explicitToJson: true)
class _$_OrderPayloadModel extends _OrderPayloadModel {
  const _$_OrderPayloadModel({
    this.id,
    this.code,
    this.deliveryStatus,
    this.paymentStatusText,
    this.total,
    this.currencySymbol,
    this.soldByName,
    this.orderStatus,
  }) : super._();

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
  Map<String, dynamic> toJson() => _$$_OrderPayloadModelToJson(this);
}

abstract class _OrderPayloadModel extends OrderPayloadModel {
  const factory _OrderPayloadModel({
    int? id,
    String? code,
    @JsonKey(name: 'delivery_status') String? deliveryStatus,
    @JsonKey(name: 'payment_status_text') String? paymentStatusText,
    String? total,
    @JsonKey(name: 'currency_symbol') String? currencySymbol,
    @JsonKey(name: 'sold_by_name') String? soldByName,
    @JsonKey(name: 'order_status') String? orderStatus,
  }) = _$_OrderPayloadModel;
  const _OrderPayloadModel._() : super._();

  factory _OrderPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_OrderPayloadModel.fromJson;
}
