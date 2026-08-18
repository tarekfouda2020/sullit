import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_discount_model/order_summary_discount_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_item_model/shipping_item_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_summary_model.freezed.dart';

part 'shipping_summary_model.g.dart';


 Object? readVatPercentage(
Map<dynamic, dynamic> json,
String key,
) {
return json['vat_percentage'] ?? json['vat_percentage '];
}

@freezed
@immutable
class ShippingSummaryModel extends BaseApiModel<ShippingSummary>
    with _$ShippingSummaryModel {
  const ShippingSummaryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShippingSummaryModel({
    required String subtotal,
    required String tax,
     String? shipping,
    @JsonKey(name: "coupon_discount") required String couponDiscount,
    @JsonKey(name: "calculable_total") required double calTotal,
    required String total,
    @JsonKey(name: "coupon_code") String? couponCode,
    @JsonKey(name: "coupon_applied") bool? couponApplied,
    @JsonKey(name: "total_items") required int totalItems,
    @JsonKey(name: "bag_count") required int bagsCount,
    @JsonKey(name: "minimum_order_amount_status")  bool? minimumOrderAmountStatus,
    @JsonKey(name: "minimum_order_amount_msg")  String? minimumOrderAmountMsg,
    @JsonKey(name: "minimum_order_amount")  double? minimumOrderAmountAmount,
    @JsonKey(name: "wallet_system_active") required bool walletSystemActive,
    @JsonKey(name: "wallet_balance") required String walletBalance,
    @JsonKey(name: "wallet_balance_value") required double walletBalanceValue,
    @JsonKey(name: "avilable_pay_with_wallet")
    required bool avilablePayWithWallet,
    @JsonKey(name: "avilable_cash_on_delivery")
    required bool avilableCashOnDelivery,
    @JsonKey(name: "service_fees") required String serviceFee,
    @JsonKey(name: "technology_fees") required String technologyFees,
    @JsonKey(
      readValue: readVatPercentage,
    )
    required String vatPercentage,
    @JsonKey(name: "vat_fee_amount") required String vatFeeAmount,
    @JsonKey(name: "environment_fees") required String environmentFees,
    @JsonKey(name: "items",defaultValue: [] )@Default([]) List<ShippingItemModel>? items,
    @JsonKey(name: "loyalty_points_value") String? loyaltyPointsValue,
    @JsonKey(name: "loyalty_points_applied") bool? loyaltyPointsApplied,
    @JsonKey(name: "loyalty_points") int? loyaltyPoints,
    @JsonKey(name: "prescription_required") bool? prescriptionRequired,
    @JsonKey(name: "insurance_eligible") bool? insuranceEligible,
    @JsonKey(name: "total_fee_amount") String? totalFeeAmount,
    @JsonKey(name: "gift_card_applied") bool? giftCardApplied,
    @JsonKey(name: "gift_card_valid") bool? giftCardValid,
    @JsonKey(name: "gift_card_value") String? giftCardValue,
    @JsonKey(name: "applied_gift_card") double? appliedGiftCard,
    @JsonKey(name: "gift_card_code") String? giftCardCode,
    @JsonKey(name: "expected_loyalty_points") required int expectedLoyaltyPoints,
    @JsonKey(name: "order_discounts") List<OrderSummaryDiscountModel>? orderDiscountTypes,
  }) = _ShippingSummaryModel;

  factory ShippingSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingSummaryModelFromJson(json);


  @override
  ShippingSummary toDomainModel() {
    return ShippingSummary(
        subTotal: subtotal,
        tax: tax,
        shipping: shipping ?? "",
        couponDiscount: couponDiscount,
        calTotal: calTotal,
        total: total,
        couponCode: couponCode,
        couponApplied: couponApplied,
        totalItems: totalItems,
        minimumOrderAmountStatus: minimumOrderAmountStatus,
        minimumOrderAmountMsg: minimumOrderAmountMsg,
        walletSystemActive: walletSystemActive,
        walletBalance: walletBalance,
        walletBalanceValue: walletBalanceValue,
        avilablePayWithWallet: avilablePayWithWallet,
        avilableCashOnDelivery: avilableCashOnDelivery,
        items: items?.map((e) => e.toDomainModel()).toList(),
        loyaltyPointsValue: loyaltyPointsValue,
        loyaltyPointsApplied: loyaltyPointsApplied,
        loyaltyPoints: loyaltyPoints,
        minimumOrderAmountAmount: minimumOrderAmountAmount,
        serviceFees: serviceFee,
        technologyFees: technologyFees,
        expectedLoyaltyPoints: expectedLoyaltyPoints,
        vatFeeAmount: vatFeeAmount,
        vatPercentage: vatPercentage,
        environmentFees: environmentFees,
        bagsCount: bagsCount,
        insuranceEligible: insuranceEligible,
        prescriptionRequired: prescriptionRequired,
        totalFeeAmount: totalFeeAmount,
        giftCardApplied: giftCardApplied,
        giftCardValid: giftCardValid,
        giftCardValue: giftCardValue,
        appliedGiftCard: (appliedGiftCard ?? 0.0).toString(),
        giftCardCode: giftCardCode,
        discountTypes:
            orderDiscountTypes?.map((e) => e.toDomainModel()).toList()
        // discountTypes:
        );
  }
}
