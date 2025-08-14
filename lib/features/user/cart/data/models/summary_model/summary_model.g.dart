// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SummaryModel _$$_SummaryModelFromJson(Map<String, dynamic> json) =>
    _$_SummaryModel(
      orderDate: json['order_date'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      shippingAddress: json['shipping_address'] as String,
      orderStatus: json['order_status'] as String,
      totalOrderAmount: json['total_order_amount'] as String,
      totalItems: json['total_items'] as int?,
      shipping: json['shipping'] as String,
      phone: json['phone'] as String,
      paymentMethod: json['payment_method'] as String,
    );

Map<String, dynamic> _$$_SummaryModelToJson(_$_SummaryModel instance) =>
    <String, dynamic>{
      'order_date': instance.orderDate,
      'name': instance.name,
      'email': instance.email,
      'shipping_address': instance.shippingAddress,
      'order_status': instance.orderStatus,
      'total_order_amount': instance.totalOrderAmount,
      'total_items': instance.totalItems,
      'shipping': instance.shipping,
      'phone': instance.phone,
      'payment_method': instance.paymentMethod,
    };
