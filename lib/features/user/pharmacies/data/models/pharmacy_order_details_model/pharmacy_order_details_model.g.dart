// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyOrderDetailsModel _$$_PharmacyOrderDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PharmacyOrderDetailsModel(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      shopType: json['shop_type'] as String?,
      isPendingReview: json['is_pending_review'] as bool?,
      awaitingCustomerCompletion: json['awaiting_customer_completion'] as bool?,
      requiresPrescriptionReview: json['requires_prescription_review'] as bool?,
      insuranceApplied: json['insurance_applied'] as bool?,
      orderType: json['order_type'] as String?,
      availableReturnOrder: json['available_return_order'] as bool?,
      showButtonPay: json['show_button_pay'] as bool?,
      loyaltyPointsApplied: json['loyalty_points_applied'] as bool?,
      loyaltyPoints: (json['loyalty_points'] as num?)?.toInt(),
      expectedLoyaltyPoints: (json['expected_loyalty_points'] as num?)?.toInt(),
      bagCount: (json['bag_count'] as num?)?.toInt(),
      totalItems: (json['total_items'] as num?)?.toInt(),
      soldByType: json['sold_by_type'] as String?,
      soldByName: json['sold_by_name'] as String?,
      subtotal: json['subtotal'] as String?,
      shipping: json['shipping'] as String?,
      tax: json['tax'] as String?,
      couponDiscount: json['coupon_discount'] as String?,
      serviceFees: json['service_fees'] as String?,
      environmentFees: json['environment_fees'] as String?,
      technologyFees: json['technology_fees'] as String?,
      vatFeeAmount: json['vat_fee_amount'] as String?,
      totalFeeAmount: json['total_fee_amount'] as String?,
      loyaltyPointsValue: json['loyalty_points_value'] as String?,
      total: json['total'] as String?,
      date: json['date'] as String?,
      cancelReason: json['cancel_reason'] as String?,
      deliveryStatusConst: json['delivery_status_const'] as String?,
      deliveryStatus: json['delivery_status'] as String?,
      deliveryViewed: json['delivery_viewed'] as bool?,
      paymentStatusViewed: json['payment_status_viewed'] as bool?,
      paymentStatus: json['payment_status'] as bool?,
      paymentStatusText: json['payment_status_text'] as String?,
      availableCancelOrder: json['available_cancel_order'] as bool?,
      additionalInfo: json['additional_info'] as String?,
      paymentMethod: json['payment_method'] as String?,
      paymentMethodKey: json['payment_method_key'] as String?,
      shippingMethod: json['shipping_method'] as String?,
      orderStatus: json['order_status'] as String?,
      orderDate: json['order_date'] as String?,
      shippingAddress: json['shipping_address'] as String?,
      customerName: json['customer_name'] as String?,
      customerEmail: json['customer_email'] as String?,
      customerPhone: json['customer_phone'] as String?,
      returnReason: json['return_reason'] as String?,
      orderDetails: (json['order_details'] as List<dynamic>?)
              ?.map((e) =>
                  PharmacyOrderItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      shippingType: json['shipping_type'] as String?,
      driverNotes: json['driver_notes'] as String?,
      pickerNotes: json['picker_notes'] as String?,
      insuranceAttachments: (json['insurance_attachments'] as List<dynamic>?)
              ?.map((e) =>
                  PharmacyAttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      prescriptionAttachments: (json['prescription_attachments']
                  as List<dynamic>?)
              ?.map((e) =>
                  PharmacyAttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PharmacyOrderDetailsModelToJson(
        _$_PharmacyOrderDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'shop_type': instance.shopType,
      'is_pending_review': instance.isPendingReview,
      'awaiting_customer_completion': instance.awaitingCustomerCompletion,
      'requires_prescription_review': instance.requiresPrescriptionReview,
      'insurance_applied': instance.insuranceApplied,
      'order_type': instance.orderType,
      'available_return_order': instance.availableReturnOrder,
      'show_button_pay': instance.showButtonPay,
      'loyalty_points_applied': instance.loyaltyPointsApplied,
      'loyalty_points': instance.loyaltyPoints,
      'expected_loyalty_points': instance.expectedLoyaltyPoints,
      'bag_count': instance.bagCount,
      'total_items': instance.totalItems,
      'sold_by_type': instance.soldByType,
      'sold_by_name': instance.soldByName,
      'subtotal': instance.subtotal,
      'shipping': instance.shipping,
      'tax': instance.tax,
      'coupon_discount': instance.couponDiscount,
      'service_fees': instance.serviceFees,
      'environment_fees': instance.environmentFees,
      'technology_fees': instance.technologyFees,
      'vat_fee_amount': instance.vatFeeAmount,
      'total_fee_amount': instance.totalFeeAmount,
      'loyalty_points_value': instance.loyaltyPointsValue,
      'total': instance.total,
      'date': instance.date,
      'cancel_reason': instance.cancelReason,
      'delivery_status_const': instance.deliveryStatusConst,
      'delivery_status': instance.deliveryStatus,
      'delivery_viewed': instance.deliveryViewed,
      'payment_status_viewed': instance.paymentStatusViewed,
      'payment_status': instance.paymentStatus,
      'payment_status_text': instance.paymentStatusText,
      'available_cancel_order': instance.availableCancelOrder,
      'additional_info': instance.additionalInfo,
      'payment_method': instance.paymentMethod,
      'payment_method_key': instance.paymentMethodKey,
      'shipping_method': instance.shippingMethod,
      'order_status': instance.orderStatus,
      'order_date': instance.orderDate,
      'shipping_address': instance.shippingAddress,
      'customer_name': instance.customerName,
      'customer_email': instance.customerEmail,
      'customer_phone': instance.customerPhone,
      'return_reason': instance.returnReason,
      'order_details': instance.orderDetails.map((e) => e.toJson()).toList(),
      'shipping_type': instance.shippingType,
      'driver_notes': instance.driverNotes,
      'picker_notes': instance.pickerNotes,
      'insurance_attachments':
          instance.insuranceAttachments.map((e) => e.toJson()).toList(),
      'prescription_attachments':
          instance.prescriptionAttachments.map((e) => e.toJson()).toList(),
    };
