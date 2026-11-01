// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartPayloadModel _$$_CartPayloadModelFromJson(Map<String, dynamic> json) =>
    _$_CartPayloadModel(
      action: json['action'] as String?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CartItemModel>[],
      subTotal: json['sub_total'] as String?,
      calculableTotal: json['calculable_total'] as num?,
      currencySymbol: json['currency_symbol'] as String?,
      returned: (json['returned'] as num?)?.toInt(),
      minimumOrderAmountMsg: json['minimum_order_amount_msg'] as String?,
      minimumOrderAmountStatus:
          json['minimum_order_amount_status'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CartPayloadModelToJson(_$_CartPayloadModel instance) =>
    <String, dynamic>{
      'action': instance.action,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'sub_total': instance.subTotal,
      'calculable_total': instance.calculableTotal,
      'currency_symbol': instance.currencySymbol,
      'returned': instance.returned,
      'minimum_order_amount_msg': instance.minimumOrderAmountMsg,
      'minimum_order_amount_status': instance.minimumOrderAmountStatus,
    };
