// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderCardModel _$$_OrderCardModelFromJson(Map<String, dynamic> json) =>
    _$_OrderCardModel(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      shopType: json['shop_type'] as String,
      isPendingReview: json['is_pending_review'] as bool,
      awaitingCustomerCompletion: json['awaiting_customer_completion'] as bool,
      requiresPrescriptionReview: json['requires_prescription_review'] as bool,
      insuranceApplied: json['insurance_applied'] as bool,
      orderType: json['order_type'] as String,
      deliveryStatusConst: json['delivery_status_const'] as String,
      deliveryStatus: json['delivery_status'] as String,
      soldByType: json['sold_by_type'] as String,
      soldBy: json['sold_by_name'] as String,
      orderStatus: json['order_status'] as String,
      orderDate: json['order_date'] as String,
      paymentStatus: json['payment_status'] as bool,
      paymentStatusText: json['payment_status_text'] as String,
      paymentStatusViewed: json['payment_status_viewed'] as bool,
      total: json['total'] as String,
      paymentMethod: json['payment_method'] as String,
      paymentMethodConst: json['payment_method_key'] as String,
      shippingType: json['shipping_type'] as String,
      availableCancelOrder: json['available_cancel_order'] as bool?,
    );

Map<String, dynamic> _$$_OrderCardModelToJson(_$_OrderCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'shop_type': instance.shopType,
      'is_pending_review': instance.isPendingReview,
      'awaiting_customer_completion': instance.awaitingCustomerCompletion,
      'requires_prescription_review': instance.requiresPrescriptionReview,
      'insurance_applied': instance.insuranceApplied,
      'order_type': instance.orderType,
      'delivery_status_const': instance.deliveryStatusConst,
      'delivery_status': instance.deliveryStatus,
      'sold_by_type': instance.soldByType,
      'sold_by_name': instance.soldBy,
      'order_status': instance.orderStatus,
      'order_date': instance.orderDate,
      'payment_status': instance.paymentStatus,
      'payment_status_text': instance.paymentStatusText,
      'payment_status_viewed': instance.paymentStatusViewed,
      'total': instance.total,
      'payment_method': instance.paymentMethod,
      'payment_method_key': instance.paymentMethodConst,
      'shipping_type': instance.shippingType,
      'available_cancel_order': instance.availableCancelOrder,
    };
