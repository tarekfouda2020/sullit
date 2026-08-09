import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/delivery_instruction/delivery_instruction.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_details_model/order_details_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_discount/order_discount.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_driver_model/order_driver_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../order_modification_model/order_modification_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
@immutable
class OrderModel extends BaseApiModel<Orders> with _$OrderModel {
  const OrderModel._();

  @JsonSerializable(explicitToJson: true)
  const factory OrderModel({
    required int id,
    required String code,
    @JsonKey(name: 'order_type') required String orderType,
    @JsonKey(name: 'bag_count') required int bagCount,
    @JsonKey(name: 'available_return_order') required bool availableReturnOrder,
    @JsonKey(name: 'show_button_pay') required bool showButtonPay,
    required String subtotal,
    required String shipping,
    required String tax,
    @JsonKey(name: 'coupon_discount') required String couponDiscount,
    required String total,
    required String date,
    @JsonKey(name: 'delivery_status_const') required String deliveryStatusConst,
    @JsonKey(name: 'delivery_status') required String deliveryStatus,
    @JsonKey(name: 'delivery_viewed') required bool deliveryViewed,
    @JsonKey(name: 'payment_status_viewed') required bool paymentStatusViewed,
    @JsonKey(name: 'payment_status') required bool paymentStatus,
    @JsonKey(name: 'payment_status_text') required String paymentStatusText,
    @JsonKey(name: 'available_cancel_order') required bool availableCancelOrder,
    @JsonKey(name: 'additional_info') required String additionalInfo,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @JsonKey(name: 'payment_method_key') required String paymentMethodConst,
    @JsonKey(name: 'shipping_method') required String shippingMethod,
    @JsonKey(name: 'order_status') required String orderStatus,
    @JsonKey(name: 'order_date') required String orderDate,
    @JsonKey(name: 'shipping_address') required String shippingAddress,
    @JsonKey(name: 'customer_name') required String customerName,
    @JsonKey(name: 'customer_email') required String customerEmail,
    @JsonKey(name: 'customer_phone') required String customerPhone,
    @JsonKey(name: 'return_reason') required String returnReason,
    @JsonKey(name: 'sold_by_type') required String soldByType,
    @JsonKey(name: 'sold_by_name') required String soldBy,
    @JsonKey(name: 'loyalty_points_value') required String loyaltyPointsValue,
    @JsonKey(name: 'loyalty_points_applied') required bool loyaltyPointsApplied,
    @JsonKey(name: 'loyalty_points') required int loyaltyPoints,
    @JsonKey(name: 'total_items') required int totalItems,
    @JsonKey(name: 'expected_loyalty_points') required int expectedLoyaltyPoints,
    @JsonKey(name: 'order_details') required List<OrderDetailsModel> orderDetails,
    @JsonKey(name: 'service_fees') required String serviceFees,
    @JsonKey(name: 'technology_fees') required String technologyFees,
    @JsonKey(name: 'environment_fees') required String environmentFees,
    @JsonKey(name: 'vat_fee_amount') required String vatFeeAmount,
    /// total of fees with there *vat => (vatFeeAmount)*
    @JsonKey(name: 'total_fee_amount') required String totalFeeAmount,
    @JsonKey(name: 'driver_notes') required String driverNotes,
    @JsonKey(name: 'picker_notes') required String pickerNotes,
    @JsonKey(name: 'delivery_instructions') required List<DeliveryInstruction> deliveryInstructions,
    @JsonKey(name: 'order_discounts')  List<OrderDiscount>? orderDiscounts,
    @JsonKey(name: 'driver') OrderDriverModel? driver,
    @JsonKey(name: 'order_source_label') String? orderSourceLabel,
    @JsonKey(name: 'shipping_provider') String? shippingProvider,
    @JsonKey(name: 'shipping_provider_label') String? shippingProviderLabel,
    @JsonKey(name: 'order_detail_histories') List<OrderModificationModel>? orderDetailHistories,
    @JsonKey(name: 'delivery_image') String? deliveryImage,
    @JsonKey(name: 'creation_method') String? creationMethod,
    @JsonKey(name: 'creation_method_label') String? creationMethodLabel,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

  @override
  Orders toDomainModel() {
    return Orders(
      id: id,
      code: code,
        bagCount : bagCount,
      orderType: orderType,
      availableReturnOrder: availableReturnOrder,
      showButtonPay: showButtonPay,
      subtotal: subtotal,
      shipping: shipping,
      tax: tax,
      couponDiscount: couponDiscount,
      total: total,
      date: date,
      deliveryStatusConst: deliveryStatusConst,
      deliveryStatus: deliveryStatus,
      deliveryViewed: deliveryViewed,
      paymentStatusViewed: paymentStatusViewed,
      paymentStatus: paymentStatus,
      paymentStatusText: paymentStatusText,
      availableCancelOrder: availableCancelOrder,
      additionalInfo: additionalInfo,
      paymentMethod: paymentMethod,
      shippingMethod: shippingMethod,
      orderStatus: orderStatus,
      orderDate: orderDate,
      shippingAddress: shippingAddress,
      customerName: customerName,
      customerEmail: customerEmail,
      returnReason: returnReason,
      orderDetails: orderDetails.map((e) => e.toDomainModel()).toList(),
      soldBy: soldBy,
      soldByType: soldByType,
      customerPhone: customerPhone,
      loyaltyPointsValue: loyaltyPointsValue,
      loyaltyPointsApplied: loyaltyPointsApplied,
      loyaltyPoints: loyaltyPoints,
      totalItems: totalItems,
      driverModel: driver?.toDomainModel(),
      technologyFees: technologyFees,
      serviceFees: serviceFees,
      vatFeeAmount: vatFeeAmount,
      totalFeeAmount: totalFeeAmount,
      expectedLoyaltyPoints: expectedLoyaltyPoints,
      environmentFees: environmentFees,
      driverNotes: driverNotes,
      pickerNotes: pickerNotes,
      paymentMethodConst: paymentMethodConst,
      instructions: deliveryInstructions.map((e) => e.toDomainModel()).toList(),
      orderDiscounts: orderDiscounts?.map((e) => e.toDomainModel()).toList(),
      orderSourceLabel:orderSourceLabel ,
       shippingProvider: shippingProvider,
      shippingProviderLabel:shippingProviderLabel,
      orderDetailHistories: orderDetailHistories?.map((e) => e.toDomainModel()).toList(),
      deliveryImage: deliveryImage,
      creationMethod: creationMethod,
      creationMethodLabel:creationMethodLabel,
    );
  }
}
