// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModel _$$_OrderModelFromJson(Map<String, dynamic> json) =>
    _$_OrderModel(
      id: json['id'] as int,
      code: json['code'] as String,
      orderType: json['order_type'] as String,
      availableReturnOrder: json['available_return_order'] as bool,
      showButtonPay: json['show_button_pay'] as bool,
      subtotal: json['subtotal'] as String,
      shipping: json['shipping'] as String,
      tax: json['tax'] as String,
      couponDiscount: json['coupon_discount'] as String,
      total: json['total'] as String,
      date: json['date'] as String,
      deliveryStatusConst: json['delivery_status_const'] as String,
      deliveryStatus: json['delivery_status'] as String,
      deliveryViewed: json['delivery_viewed'] as bool,
      paymentStatusViewed: json['payment_status_viewed'] as bool,
      paymentStatus: json['payment_status'] as bool,
      paymentStatusText: json['payment_status_text'] as String,
      availableCancelOrder: json['available_cancel_order'] as bool,
      additionalInfo: json['additional_info'] as String,
      paymentMethod: json['payment_method'] as String,
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
      loyaltyPoints: json['loyalty_points'] as int,
      totalItems: json['total_items'] as int,
      orderDetails: (json['order_details'] as List<dynamic>)
          .map((e) => OrderDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderModelToJson(_$_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'order_type': instance.orderType,
      'available_return_order': instance.availableReturnOrder,
      'show_button_pay': instance.showButtonPay,
      'subtotal': instance.subtotal,
      'shipping': instance.shipping,
      'tax': instance.tax,
      'coupon_discount': instance.couponDiscount,
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
      'order_details': instance.orderDetails.map((e) => e.toJson()).toList(),
    };
