// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      orderType: json['order_type'] as String,
      bagCount: (json['bag_count'] as num?)?.toInt(),
      availableReturnOrder: json['available_return_order'] as bool,
      showButtonPay: json['show_button_pay'] as bool,
      subtotal: json['subtotal'] as String,
      shipping: json['shipping'] as String,
      tax: json['tax'] as String,
      couponDiscount: json['coupon_discount'] as String,
      shopType: json['shop_type'] as String,
      total: json['total'] as String,
      date: json['date'] as String,
      deliveryStatusConst: json['delivery_status_const'] as String,
      deliveryStatus: json['delivery_status'] as String,
      deliveryViewed: json['delivery_viewed'] as bool,
      paymentStatusViewed: json['payment_status_viewed'] as bool,
      paymentStatus: json['payment_status'] as bool,
      paymentStatusText: json['payment_status_text'] as String,
      availableCancelOrder: json['available_cancel_order'] as bool,
      additionalInfo: json['additional_info'] as String?,
      paymentMethod: json['payment_method'] as String,
      paymentMethodConst: json['payment_method_key'] as String,
      shippingMethod: json['shipping_method'] as String,
      orderStatus: json['order_status'] as String,
      orderDate: json['order_date'] as String,
      shippingAddress: json['shipping_address'] as String,
      customerName: json['customer_name'] as String,
      customerEmail: json['customer_email'] as String,
      customerPhone: json['customer_phone'] as String,
      returnReason: json['return_reason'] as String,
      soldByType: json['sold_by_type'] as String,
      soldBy: json['sold_by_name'] as String,
      loyaltyPointsValue: json['loyalty_points_value'] as String,
      loyaltyPointsApplied: json['loyalty_points_applied'] as bool,
      loyaltyPoints: (json['loyalty_points'] as num).toInt(),
      totalItems: (json['total_items'] as num).toInt(),
      expectedLoyaltyPoints: (json['expected_loyalty_points'] as num).toInt(),
      orderDetails: (json['order_details'] as List<dynamic>)
          .map((e) => OrderDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceFees: json['service_fees'] as String,
      technologyFees: json['technology_fees'] as String,
      environmentFees: json['environment_fees'] as String,
      vatFeeAmount: json['vat_fee_amount'] as String,
      totalFeeAmount: json['total_fee_amount'] as String,
      driverNotes: json['driver_notes'] as String,
      pickerNotes: json['picker_notes'] as String,
      deliveryInstructions: (json['delivery_instructions'] as List<dynamic>)
          .map((e) => DeliveryInstruction.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderDiscounts: (json['order_discounts'] as List<dynamic>?)
          ?.map((e) => OrderDiscount.fromJson(e as Map<String, dynamic>))
          .toList(),
      driver: json['driver'] == null
          ? null
          : OrderDriverModel.fromJson(json['driver'] as Map<String, dynamic>),
      orderSourceLabel: json['order_source_label'] as String?,
      shippingProvider: json['shipping_provider'] as String?,
      shippingProviderLabel: json['shipping_provider_label'] as String?,
      isPendingReview: json['is_pending_review'] as bool?,
      awaitingCustomerCompletion: json['awaiting_customer_completion'] as bool?,
      requiresPrescriptionReview: json['requires_prescription_review'] as bool?,
      insuranceApplied: json['insurance_applied'] as bool?,
      insuranceAttachments: (json['insurance_attachments'] as List<dynamic>?)
          ?.map((e) =>
              PharmacyAttachmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      prescriptionAttachments:
          (json['prescription_attachments'] as List<dynamic>?)
              ?.map((e) =>
                  PharmacyAttachmentModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      insuranceCompany: json['insurance_company'] == null
          ? null
          : InsuranceCompanyModel.fromJson(
              json['insurance_company'] as Map<String, dynamic>),
      cancelReason: json['cancel_reason'] as String?,
      identityDocumentFile: json['identity_document_file'] as String?,
      requestedBy: json['requested_by'] as String?,
      requestedByLabel: json['requested_by_label'] as String?,
      pharmacyReply: json['pharmacy_reply'] as String?,
      branch: json['branch'] == null
          ? null
          : PharmacyBranchModel.fromJson(
              json['branch'] as Map<String, dynamic>),
      shop: json['shop'] == null
          ? null
          : ShopCardModel.fromJson(json['shop'] as Map<String, dynamic>),
      creationMethod: json['creation_method'] as String?,
      creationMethodLabel: json['creation_method_label'] as String?,
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'order_type': instance.orderType,
      'bag_count': instance.bagCount,
      'available_return_order': instance.availableReturnOrder,
      'show_button_pay': instance.showButtonPay,
      'subtotal': instance.subtotal,
      'shipping': instance.shipping,
      'tax': instance.tax,
      'coupon_discount': instance.couponDiscount,
      'shop_type': instance.shopType,
      'total': instance.total,
      'date': instance.date,
      'delivery_status_const': instance.deliveryStatusConst,
      'delivery_status': instance.deliveryStatus,
      'delivery_viewed': instance.deliveryViewed,
      'payment_status_viewed': instance.paymentStatusViewed,
      'payment_status': instance.paymentStatus,
      'payment_status_text': instance.paymentStatusText,
      'available_cancel_order': instance.availableCancelOrder,
      'additional_info': instance.additionalInfo,
      'payment_method': instance.paymentMethod,
      'payment_method_key': instance.paymentMethodConst,
      'shipping_method': instance.shippingMethod,
      'order_status': instance.orderStatus,
      'order_date': instance.orderDate,
      'shipping_address': instance.shippingAddress,
      'customer_name': instance.customerName,
      'customer_email': instance.customerEmail,
      'customer_phone': instance.customerPhone,
      'return_reason': instance.returnReason,
      'sold_by_type': instance.soldByType,
      'sold_by_name': instance.soldBy,
      'loyalty_points_value': instance.loyaltyPointsValue,
      'loyalty_points_applied': instance.loyaltyPointsApplied,
      'loyalty_points': instance.loyaltyPoints,
      'total_items': instance.totalItems,
      'expected_loyalty_points': instance.expectedLoyaltyPoints,
      'order_details': instance.orderDetails.map((e) => e.toJson()).toList(),
      'service_fees': instance.serviceFees,
      'technology_fees': instance.technologyFees,
      'environment_fees': instance.environmentFees,
      'vat_fee_amount': instance.vatFeeAmount,
      'total_fee_amount': instance.totalFeeAmount,
      'driver_notes': instance.driverNotes,
      'picker_notes': instance.pickerNotes,
      'delivery_instructions':
          instance.deliveryInstructions.map((e) => e.toJson()).toList(),
      'order_discounts':
          instance.orderDiscounts?.map((e) => e.toJson()).toList(),
      'driver': instance.driver?.toJson(),
      'order_source_label': instance.orderSourceLabel,
      'shipping_provider': instance.shippingProvider,
      'shipping_provider_label': instance.shippingProviderLabel,
      'is_pending_review': instance.isPendingReview,
      'awaiting_customer_completion': instance.awaitingCustomerCompletion,
      'requires_prescription_review': instance.requiresPrescriptionReview,
      'insurance_applied': instance.insuranceApplied,
      'insurance_attachments':
          instance.insuranceAttachments?.map((e) => e.toJson()).toList(),
      'prescription_attachments':
          instance.prescriptionAttachments?.map((e) => e.toJson()).toList(),
      'insurance_company': instance.insuranceCompany?.toJson(),
      'cancel_reason': instance.cancelReason,
      'identity_document_file': instance.identityDocumentFile,
      'requested_by': instance.requestedBy,
      'requested_by_label': instance.requestedByLabel,
      'pharmacy_reply': instance.pharmacyReply,
      'branch': instance.branch?.toJson(),
      'shop': instance.shop?.toJson(),
      'creation_method': instance.creationMethod,
      'creation_method_label': instance.creationMethodLabel,
    };
