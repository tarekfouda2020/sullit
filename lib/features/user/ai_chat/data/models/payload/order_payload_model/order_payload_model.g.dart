// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderPayloadModel _$$_OrderPayloadModelFromJson(Map<String, dynamic> json) =>
    _$_OrderPayloadModel(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      deliveryStatus: json['delivery_status'] as String?,
      paymentStatusText: json['payment_status_text'] as String?,
      total: json['total'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      soldByName: json['sold_by_name'] as String?,
      orderStatus: json['order_status'] as String?,
    );

Map<String, dynamic> _$$_OrderPayloadModelToJson(
        _$_OrderPayloadModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'delivery_status': instance.deliveryStatus,
      'payment_status_text': instance.paymentStatusText,
      'total': instance.total,
      'currency_symbol': instance.currencySymbol,
      'sold_by_name': instance.soldByName,
      'order_status': instance.orderStatus,
    };
