// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingSummaryModel _$$_ShippingSummaryModelFromJson(
        Map<String, dynamic> json) =>
    _$_ShippingSummaryModel(
      subtotal: json['subtotal'] as String,
      tax: json['tax'] as String,
      shipping: json['shipping'] as String,
      couponDiscount: json['coupon_discount'] as String,
      calTotal: (json['calculable_total'] as num).toDouble(),
      total: json['total'] as String,
      couponCode: json['coupon_code'] as String?,
      couponApplied: json['coupon_applied'] as bool?,
      totalItems: (json['total_items'] as num).toInt(),
      minimumOrderAmountStatus: json['minimum_order_amount_status'] as bool,
      minimumOrderAmountMsg: json['minimum_order_amount_msg'] as String,
      minimumOrderAmountAmount:
          (json['minimum_order_amount'] as num).toDouble(),
      walletSystemActive: json['wallet_system_active'] as bool,
      walletBalance: json['wallet_balance'] as String,
      walletBalanceValue: (json['wallet_balance_value'] as num).toDouble(),
      avilablePayWithWallet: json['avilable_pay_with_wallet'] as bool,
      avilableCashOnDelivery: json['avilable_cash_on_delivery'] as bool,
      serviceFee: json['service_fees'] as String,
      technologyFees: json['technology_fees'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => ShippingItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      loyaltyPointsValue: json['loyalty_points_value'] as String?,
      loyaltyPointsApplied: json['loyalty_points_applied'] as bool?,
      loyaltyPoints: (json['loyalty_points'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$_ShippingSummaryModelToJson(
        _$_ShippingSummaryModel instance) =>
    <String, dynamic>{
      'subtotal': instance.subtotal,
      'tax': instance.tax,
      'shipping': instance.shipping,
      'coupon_discount': instance.couponDiscount,
      'calculable_total': instance.calTotal,
      'total': instance.total,
      'coupon_code': instance.couponCode,
      'coupon_applied': instance.couponApplied,
      'total_items': instance.totalItems,
      'minimum_order_amount_status': instance.minimumOrderAmountStatus,
      'minimum_order_amount_msg': instance.minimumOrderAmountMsg,
      'minimum_order_amount': instance.minimumOrderAmountAmount,
      'wallet_system_active': instance.walletSystemActive,
      'wallet_balance': instance.walletBalance,
      'wallet_balance_value': instance.walletBalanceValue,
      'avilable_pay_with_wallet': instance.avilablePayWithWallet,
      'avilable_cash_on_delivery': instance.avilableCashOnDelivery,
      'service_fees': instance.serviceFee,
      'technology_fees': instance.technologyFees,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'loyalty_points_value': instance.loyaltyPointsValue,
      'loyalty_points_applied': instance.loyaltyPointsApplied,
      'loyalty_points': instance.loyaltyPoints,
    };
