// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDiscountModel _$$_OrderDiscountModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderDiscountModel(
      type: json['type'] as String,
      label: json['label'] as String,
      discount: json['discount'] as String,
    );

Map<String, dynamic> _$$_OrderDiscountModelToJson(
        _$_OrderDiscountModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'label': instance.label,
      'discount': instance.discount,
    };
