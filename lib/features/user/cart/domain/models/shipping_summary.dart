import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping_item.dart';

class ShippingSummary extends BaseDomainModel{
  String subTotal ;
  String tax ;
  String shipping ;
  String couponDiscount ;
  double calTotal ;
  String total;
  String? couponCode ;
  bool? couponApplied ;
  int totalItems ;
  bool minimumOrderAmountStatus ;
  String minimumOrderAmountMsg ;
  bool walletSystemActive ;
  String walletBalance ;
  double walletBalanceValue;
  bool avilablePayWithWallet;
  bool avilableCashOnDelivery ;
  List<ShippingItem> items ;
  String? loyaltyPointsValue;
  int? loyaltyPoints;
  bool? loyaltyPointsApplied;
  String? appliedGiftCard;

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
    this.loyaltyPointsValue,
    this.loyaltyPoints,
    this.loyaltyPointsApplied,
    this.appliedGiftCard,
});
}