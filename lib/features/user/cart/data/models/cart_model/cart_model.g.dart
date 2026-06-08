// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      items: (json['items'] as List<dynamic>)
          .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
      subTotal: json['sub_total'] as String,
      calculableTotal: json['calculable_total'] as num,
      currencySymbol: json['currency_symbol'] as String,
      minAmountSeller: (json['minimum_order_amount_sellers'] as List<dynamic>?)
          ?.map((e) => MinAmountSeller.fromJson(e as Map<String, dynamic>))
          .toList(),
      minimumAmountMsg: json['minimum_order_amount_msg'] as String?,
      minimumAmount: (json['minimum_order_amount'] as num?)?.toDouble(),
      minimumStatus: json['minimum_order_amount_status'] as bool?,
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'type': instance.type,
      'sub_total': instance.subTotal,
      'calculable_total': instance.calculableTotal,
      'currency_symbol': instance.currencySymbol,
      'minimum_order_amount_sellers':
          instance.minAmountSeller?.map((e) => e.toJson()).toList(),
      'minimum_order_amount_msg': instance.minimumAmountMsg,
      'minimum_order_amount': instance.minimumAmount,
      'minimum_order_amount_status': instance.minimumStatus,
    };
