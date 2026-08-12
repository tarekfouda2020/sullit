import 'package:flutter_tdd/features/user/cart/data/models/order_summary_discount_model/order_summary_discount_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/payment_option_model/payment_option_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_item_model/shipping_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'instore_order_summary_model.freezed.dart';
part 'instore_order_summary_model.g.dart';

@freezed
class InstoreOrderSummaryModel with _$InstoreOrderSummaryModel {
  @JsonSerializable(explicitToJson: true)
  const factory InstoreOrderSummaryModel({
    required String subtotal,
    required String tax,
    @JsonKey(name: 'creation_method') required String creationMethod,
    @JsonKey(name: 'service_fees') required String serviceFees,
    @JsonKey(name: 'technology_fees') required String technologyFees,
    @JsonKey(name: 'vat_percentage') required String vatPercentage,
    @JsonKey(name: 'vat_fee_amount') required String vatFeeAmount,
    @JsonKey(name: 'total_fee_amount') required String totalFeeAmount,
    @JsonKey(name: 'coupon_discount') required String couponDiscount,
    @JsonKey(name: 'expected_loyalty_points') required int expectedLoyaltyPoints,
    @JsonKey(name: 'loyalty_points_value') required String loyaltyPointsValue,
    @JsonKey(name: 'loyalty_points_applied') required bool loyaltyPointsApplied,
    @JsonKey(name: 'loyalty_points') required int loyaltyPoints,
    @JsonKey(name: 'calculable_total') required num calculableTotal,
    required String total,
    @JsonKey(name: 'coupon_code') String? couponCode,
    @JsonKey(name: 'coupon_applied') required bool couponApplied,
    @JsonKey(name: 'total_items') required int totalItems,
    @JsonKey(name: 'minimum_order_amount_status')
    required bool minimumOrderAmountStatus,
    @JsonKey(name: 'minimum_order_amount_msg')
    required String minimumOrderAmountMsg,
    @JsonKey(name: 'minimum_order_amount') required num minimumOrderAmount,
    @JsonKey(name: 'wallet_system_active') required bool walletSystemActive,
    @JsonKey(name: 'wallet_balance') required String walletBalance,
    @JsonKey(name: 'wallet_balance_value') required num walletBalanceValue,
    @JsonKey(name: 'avilable_pay_with_wallet')
    required bool avilablePayWithWallet,
    @JsonKey(name: 'avilable_cash_on_delivery')
    required bool avilableCashOnDelivery,
    @JsonKey(name: 'order_discounts')
    required List<OrderSummaryDiscountModel> orderDiscounts,
    required List<ShippingItemModel> items,
    @JsonKey(name: 'payment_options')
    required List<PaymentOptionModel> paymentOptions,
  }) = _InstoreOrderSummaryModel;

  factory InstoreOrderSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$InstoreOrderSummaryModelFromJson(json);
}
