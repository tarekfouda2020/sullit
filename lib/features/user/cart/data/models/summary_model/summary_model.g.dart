// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SummaryModel _$$_SummaryModelFromJson(Map<String, dynamic> json) =>
    _$_SummaryModel(
      orderDate: json['order_date'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      shippingAddress: json['shipping_address'] as String,
      orderStatus: json['order_status'] as String,
      totalOrderAmount: json['total_order_amount'] as String,
      combinedOrderId: (json['combined_order_id'] as num).toInt(),
      totalItems: (json['total_items'] as num).toInt(),
      expectedLoyaltyPoints: (json['expected_loyalty_points'] as num?)?.toInt(),
      shipping: json['shipping'] as String,
      paymentMethod: json['payment_method'] as String,
      isPendingReview: json['is_pending_review'] as bool?,
      requiresPrescriptionReview: json['requires_prescription_review'] as bool?,
      awaitingCustomerCompletion: json['awaiting_customer_completion'] as bool?,
      insuranceApplied: json['insurance_applied'] as bool?,
      shopType: json['shop_type'] as String,
    );

Map<String, dynamic> _$$_SummaryModelToJson(_$_SummaryModel instance) =>
    <String, dynamic>{
      'order_date': instance.orderDate,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'shipping_address': instance.shippingAddress,
      'order_status': instance.orderStatus,
      'total_order_amount': instance.totalOrderAmount,
      'combined_order_id': instance.combinedOrderId,
      'total_items': instance.totalItems,
      'expected_loyalty_points': instance.expectedLoyaltyPoints,
      'shipping': instance.shipping,
      'payment_method': instance.paymentMethod,
      'is_pending_review': instance.isPendingReview,
      'requires_prescription_review': instance.requiresPrescriptionReview,
      'awaiting_customer_completion': instance.awaitingCustomerCompletion,
      'insurance_applied': instance.insuranceApplied,
      'shop_type': instance.shopType,
    };
