// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingItemModel _$$_ShippingItemModelFromJson(Map<String, dynamic> json) =>
    _$_ShippingItemModel(
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      total: json['total'] as String,
    );

Map<String, dynamic> _$$_ShippingItemModelToJson(
        _$_ShippingItemModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'total': instance.total,
    };
