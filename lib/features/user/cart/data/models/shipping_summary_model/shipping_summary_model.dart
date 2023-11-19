import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_item_model/shipping_item_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_summary_model.freezed.dart';
part 'shipping_summary_model.g.dart';

@freezed
@immutable
class ShippingSummaryModel extends BaseApiModel<ShippingSummary>
    with _$ShippingSummaryModel {
  const ShippingSummaryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShippingSummaryModel({
    required String subtotal,
    required String tax,
    required String shipping,
    @JsonKey(name: "coupon_discount") required String couponDiscount,
    @JsonKey(name: "calculable_total") required double calTotal,
    required String total,
    @JsonKey(name: "coupon_code") String? couponCode,
    @JsonKey(name: "coupon_applied") bool? couponApplied,
    @JsonKey(name: "total_items") required int totalItems,
    @JsonKey(name: "minimum_order_amount_status")
        required bool minimumOrderAmountStatus,
    @JsonKey(name: "minimum_order_amount_msg")
        required String minimumOrderAmountMsg,
    @JsonKey(name: "wallet_system_active") required bool walletSystemActive,
    @JsonKey(name: "wallet_balance") required String walletBalance,
    @JsonKey(name: "avilable_pay_with_wallet")
        required bool avilablePayWithWallet,
    @JsonKey(name: "avilable_cash_on_delivery")
        required bool avilableCashOnDelivery,
    required List<ShippingItemModel> items,
  }) = _ShippingSummaryModel;

  factory ShippingSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ShippingSummaryModelFromJson(json);

  @override
  ShippingSummary toDomainModel() {
    return ShippingSummary(
        subTotal: subtotal,
        tax: tax,
        shipping: shipping,
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
        avilablePayWithWallet: avilablePayWithWallet,
        avilableCashOnDelivery: avilableCashOnDelivery,
        items: items.map((e) => e.toDomainModel()).toList());
  }
}
