// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instore_order_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstoreOrderSummaryModel _$$_InstoreOrderSummaryModelFromJson(
        Map<String, dynamic> json) =>
    _$_InstoreOrderSummaryModel(
      subtotal: json['subtotal'] as String,
      tax: json['tax'] as String,
      creationMethod: json['creation_method'] as String,
      serviceFees: json['service_fees'] as String,
      technologyFees: json['technology_fees'] as String,
      vatPercentage: json['vat_percentage'] as String,
      vatFeeAmount: json['vat_fee_amount'] as String,
      totalFeeAmount: json['total_fee_amount'] as String,
      couponDiscount: json['coupon_discount'] as String,
      expectedLoyaltyPoints: (json['expected_loyalty_points'] as num).toInt(),
      loyaltyPointsValue: json['loyalty_points_value'] as String,
      loyaltyPointsApplied: json['loyalty_points_applied'] as bool,
      loyaltyPoints: (json['loyalty_points'] as num).toInt(),
      calculableTotal: json['calculable_total'] as num,
      total: json['total'] as String,
      couponCode: json['coupon_code'] as String?,
      couponApplied: json['coupon_applied'] as bool,
      totalItems: (json['total_items'] as num).toInt(),
      minimumOrderAmountStatus: json['minimum_order_amount_status'] as bool,
      minimumOrderAmountMsg: json['minimum_order_amount_msg'] as String,
      minimumOrderAmount: json['minimum_order_amount'] as num,
      walletSystemActive: json['wallet_system_active'] as bool,
      walletBalance: json['wallet_balance'] as String,
      walletBalanceValue: json['wallet_balance_value'] as num,
      avilablePayWithWallet: json['avilable_pay_with_wallet'] as bool,
      avilableCashOnDelivery: json['avilable_cash_on_delivery'] as bool,
      orderDiscounts: (json['order_discounts'] as List<dynamic>)
          .map((e) =>
              OrderSummaryDiscountModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['items'] as List<dynamic>)
          .map((e) => ShippingItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentOptions: (json['payment_options'] as List<dynamic>)
          .map((e) => PaymentOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InstoreOrderSummaryModelToJson(
        _$_InstoreOrderSummaryModel instance) =>
    <String, dynamic>{
      'subtotal': instance.subtotal,
      'tax': instance.tax,
      'creation_method': instance.creationMethod,
      'service_fees': instance.serviceFees,
      'technology_fees': instance.technologyFees,
      'vat_percentage': instance.vatPercentage,
      'vat_fee_amount': instance.vatFeeAmount,
      'total_fee_amount': instance.totalFeeAmount,
      'coupon_discount': instance.couponDiscount,
      'expected_loyalty_points': instance.expectedLoyaltyPoints,
      'loyalty_points_value': instance.loyaltyPointsValue,
      'loyalty_points_applied': instance.loyaltyPointsApplied,
      'loyalty_points': instance.loyaltyPoints,
      'calculable_total': instance.calculableTotal,
      'total': instance.total,
      'coupon_code': instance.couponCode,
      'coupon_applied': instance.couponApplied,
      'total_items': instance.totalItems,
      'minimum_order_amount_status': instance.minimumOrderAmountStatus,
      'minimum_order_amount_msg': instance.minimumOrderAmountMsg,
      'minimum_order_amount': instance.minimumOrderAmount,
      'wallet_system_active': instance.walletSystemActive,
      'wallet_balance': instance.walletBalance,
      'wallet_balance_value': instance.walletBalanceValue,
      'avilable_pay_with_wallet': instance.avilablePayWithWallet,
      'avilable_cash_on_delivery': instance.avilableCashOnDelivery,
      'order_discounts':
          instance.orderDiscounts.map((e) => e.toJson()).toList(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'payment_options':
          instance.paymentOptions.map((e) => e.toJson()).toList(),
    };
