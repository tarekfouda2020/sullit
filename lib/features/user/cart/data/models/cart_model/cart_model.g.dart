// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      items: (json['items'] as List<dynamic>)
          .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subTotal: json['sub_total'] as String,
      calculableTotal: json['calculable_total'] as num,
      currencySymbol: json['currency_symbol'] as String,
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'sub_total': instance.subTotal,
      'calculable_total': instance.calculableTotal,
      'currency_symbol': instance.currencySymbol,
    };
