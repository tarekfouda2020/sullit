import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary_discount_domain.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping_item.dart';

class ShippingSummary extends BaseDomainModel {
  String subTotal;
  String tax;
  String shipping;
  String couponDiscount;
  double calTotal;
  String total;
  String? couponCode;
  bool? couponApplied;
  int totalItems;
  int expectedLoyaltyPoints;
  int bagsCount;
  bool minimumOrderAmountStatus;
  String minimumOrderAmountMsg;
  String serviceFees;
  String technologyFees;
  bool walletSystemActive;
  String walletBalance;
  double walletBalanceValue;
  double minimumOrderAmountAmount;
  bool avilablePayWithWallet;
  bool avilableCashOnDelivery;
  List<ShippingItem> items;
  List<OrderSummaryDiscountDomain>? discountTypes;
  String? loyaltyPointsValue;
  int? loyaltyPoints;
  bool? loyaltyPointsApplied;
  String? appliedGiftCard;
  String vatPercentage;
  String vatFeeAmount;
  String environmentFees;

  /// in pharmacy order
  bool? prescriptionRequired;
  bool? insuranceEligible;
  String? totalFeeAmount;

  String? giftCardCode;
  bool? giftCardApplied;
  bool? giftCardValid;
  String? giftCardValue;

  ShippingSummary({
    required this.subTotal,
    required this.tax,
    required this.shipping,
    required this.couponDiscount,
    required this.calTotal,
    required this.total,
    required this.couponCode,
    required this.couponApplied,
    required this.totalItems,
    required this.minimumOrderAmountStatus,
    required this.minimumOrderAmountMsg,
    required this.walletSystemActive,
    required this.walletBalance,
    required this.walletBalanceValue,
    required this.avilablePayWithWallet,
    required this.avilableCashOnDelivery,
    required this.items,
    required this.minimumOrderAmountAmount,
    required this.technologyFees,
    required this.serviceFees,
    required this.expectedLoyaltyPoints,
    required this.vatPercentage,
    required this.vatFeeAmount,
    required this.environmentFees,
    required this.bagsCount,
    this.loyaltyPointsValue,
    this.loyaltyPoints,
    this.loyaltyPointsApplied,
    this.appliedGiftCard,
    this.discountTypes,
    this.prescriptionRequired,
    this.insuranceEligible,
    this.totalFeeAmount,
    this.giftCardCode,
    this.giftCardApplied,
    this.giftCardValid,
    this.giftCardValue,
  });

  double getTotalServiceAmount() {
    var service = double.parse(serviceFees);
    var techFees = double.parse(technologyFees);
    return service + techFees;
  }

  String getTotalVat() {
    var vatOnSubTotal = double.parse(tax);
    var vatOnFees = double.parse(vatFeeAmount);
    return (vatOnSubTotal + vatOnFees).toStringAsFixed(2);
  }

  // bool get showOrderDiscounts => (couponApplied == false && loyaltyPointsApplied == false) && (discountTypes??[]).isNotEmpty;

  bool get showOrderDiscounts =>
      (discountTypes ?? <OrderSummaryDiscountDomain>[]).isNotEmpty;


  bool get isGiftCardApplied => giftCardApplied == true;


  // double get getFeesTotal => double.parse(environmentFees) + double.parse(shipping) + double.parse(serviceFees) + double.parse(technologyFees) + double.parse(getTotalVat());
}
