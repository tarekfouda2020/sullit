// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_summary_discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderSummaryDiscountModel _$$_OrderSummaryDiscountModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderSummaryDiscountModel(
      type: json['type'] as String,
      description: json['description'] as String,
      label: json['label'] as String,
      discount: json['discount'] as String,
    );

Map<String, dynamic> _$$_OrderSummaryDiscountModelToJson(
        _$_OrderSummaryDiscountModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description,
      'label': instance.label,
      'discount': instance.discount,
    };
