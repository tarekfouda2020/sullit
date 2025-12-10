// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDiscount _$$_OrderDiscountFromJson(Map<String, dynamic> json) =>
    _$_OrderDiscount(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      discount: json['discount'] as String,
      typeLabel: json['type_label'] as String,
      discountValue: json['discount_value'] as String,
    );

Map<String, dynamic> _$$_OrderDiscountToJson(_$_OrderDiscount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'discount': instance.discount,
      'type_label': instance.typeLabel,
      'discount_value': instance.discountValue,
    };
