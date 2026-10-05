// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
part of 'cart_payload_model.dart';

final _privateConstructorUsedError = UnsupportedError('freezed');

CartPayloadModel _$CartPayloadModelFromJson(Map<String, dynamic> json) {
  return _CartPayloadModel.fromJson(json);
}

mixin _$CartPayloadModel {
  String? get action => throw _privateConstructorUsedError;
  List<CartItemModel> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  String? get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'calculable_total')
  num? get calculableTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;
  int? get returned => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_order_amount_msg')
  String? get minimumOrderAmountMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_order_amount_status')
  bool get minimumOrderAmountStatus => throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

@JsonSerializable(explicitToJson: true)
class _$_CartPayloadModel extends _CartPayloadModel {
  const _$_CartPayloadModel({
    this.action,
    this.items = const <CartItemModel>[],
    this.subTotal,
    this.calculableTotal,
    this.currencySymbol,
    this.returned,
    this.minimumOrderAmountMsg,
    this.minimumOrderAmountStatus = false,
  }) : super._();

  factory _$_CartPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartPayloadModelFromJson(json);

  @override
  final String? action;
  @override
  @JsonKey()
  final List<CartItemModel> items;
  @override
  @JsonKey(name: 'sub_total')
  final String? subTotal;
  @override
  @JsonKey(name: 'calculable_total')
  final num? calculableTotal;
  @override
  @JsonKey(name: 'currency_symbol')
  final String? currencySymbol;
  @override
  final int? returned;
  @override
  @JsonKey(name: 'minimum_order_amount_msg')
  final String? minimumOrderAmountMsg;
  @override
  @JsonKey(name: 'minimum_order_amount_status')
  final bool minimumOrderAmountStatus;

  @override
  Map<String, dynamic> toJson() => _$$_CartPayloadModelToJson(this);
}

abstract class _CartPayloadModel extends CartPayloadModel {
  const factory _CartPayloadModel({
    String? action,
    List<CartItemModel> items,
    @JsonKey(name: 'sub_total') String? subTotal,
    @JsonKey(name: 'calculable_total') num? calculableTotal,
    @JsonKey(name: 'currency_symbol') String? currencySymbol,
    int? returned,
    @JsonKey(name: 'minimum_order_amount_msg') String? minimumOrderAmountMsg,
    @JsonKey(name: 'minimum_order_amount_status')
    bool minimumOrderAmountStatus,
  }) = _$_CartPayloadModel;
  const _CartPayloadModel._() : super._();

  factory _CartPayloadModel.fromJson(Map<String, dynamic> json) =
      _$_CartPayloadModel.fromJson;
}
