// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
//
// import '../../../domain/models/current_orders.dart';
//
// part 'current_orders_model.freezed.dart';
// part 'current_orders_model.g.dart';
//
// @freezed
// class CurrentOrdersModel extends BaseApiModel<CurrentOrders>
//     with _$CurrentOrdersModel {
//   const factory CurrentOrdersModel({
//     required int id,
//     required String code,
//     @JsonKey(name: 'order_type') required String orderType,
//     @JsonKey(name: 'available_return_order')
//     required bool availableReturnOrder,
//     @JsonKey(name: 'show_button_pay') required bool showButtonPay,
//     @JsonKey(name: 'loyalty_points_applied')
//     required bool loyaltyPointsApplied,
//     @JsonKey(name: 'loyalty_points') required int loyaltyPoints,
//     @JsonKey(name: 'expected_loyalty_points')
//     required int expectedLoyaltyPoints,
//     @JsonKey(name: 'bag_count') required int bagCount,
//     @JsonKey(name: 'total_items') required int totalItems,
//     @JsonKey(name: 'sold_by_type') required String soldByType,
//     @JsonKey(name: 'sold_by_name') required String soldByName,
//     required String subtotal,
//     required String shipping,
//     required String tax,
//     @JsonKey(name: 'coupon_discount') required String couponDiscount,
//     @JsonKey(name: 'service_fees') required String serviceFees,
//     @JsonKey(name: 'environment_fees') required String environmentFees,
//     @JsonKey(name: 'technology_fees') required String technologyFees,
//     @JsonKey(name: 'vat_fee_amount') required String vatFeeAmount,
//     @JsonKey(name: 'total_fee_amount') required String totalFeeAmount,
//     @JsonKey(name: 'loyalty_points_value')
//     required String loyaltyPointsValue,
//     required String total,
//     required String date,
//     @JsonKey(name: 'delivery_status_const')
//     required String deliveryStatusConst,
//     @JsonKey(name: 'delivery_status') required String deliveryStatus,
//     @JsonKey(name: 'delivery_viewed') required bool deliveryViewed,
//     @JsonKey(name: 'payment_status_viewed')
//     required bool paymentStatusViewed,
//     @JsonKey(name: 'payment_status') required bool paymentStatus,
//     @JsonKey(name: 'payment_status_text')
//     required String paymentStatusText,
//     @JsonKey(name: 'available_cancel_order')
//     required bool availableCancelOrder,
//     @JsonKey(name: 'additional_info') required String additionalInfo,
//     @JsonKey(name: 'payment_method') required String paymentMethod,
//     @JsonKey(name: 'shipping_method') required String shippingMethod,
//     @JsonKey(name: 'order_status') required String orderStatus,
//     @JsonKey(name: 'order_date') required String orderDate,
//     @JsonKey(name: 'shipping_address') required String shippingAddress,
//     @JsonKey(name: 'customer_name') required String customerName,
//     @JsonKey(name: 'customer_email') required String customerEmail,
//     @JsonKey(name: 'customer_phone') required String customerPhone,
//     @JsonKey(name: 'return_reason') required String returnReason,
//     @JsonKey(name: 'order_details')
//     required List<OrderDetailsModel> orderDetails,
//     @JsonKey(name: 'delivery_instructions')
//     required List<DeliveryInstructionModel> deliveryInstructions,
//     @JsonKey(name: 'driver_notes') required String driverNotes,
//   }) = _CurrentOrdersModel;
//
//   factory CurrentOrdersModel.fromJson(Map<String, dynamic> json) =>
//       _$CurrentOrdersModelFromJson(json);
//
//   @override
//   CurrentOrders toDomainModel() {
//     return CurrentOrders(
//       id: id,
//       code: code,
//       orderType: orderType,
//       availableReturnOrder: availableReturnOrder,
//       showButtonPay: showButtonPay,
//       loyaltyPoints: loyaltyPoints,
//       expectedLoyaltyPoints: expectedLoyaltyPoints,
//       bagCount: bagCount,
//       totalItems: totalItems,
//       soldByName: soldByName,
//       subtotal: double.parse(subtotal),
//       shipping: double.parse(shipping),
//       tax: double.parse(tax),
//       total: double.parse(total),
//       orderStatus: orderStatus,
//       orderDate: orderDate,
//       paymentMethod: paymentMethod,
//       paymentStatus: paymentStatus,
//       paymentStatusText: paymentStatusText,
//       shippingAddress: shippingAddress,
//       items: orderDetails.map((e) => e.toDomainModel()).toList(),
//       deliveryInstructions:
//       deliveryInstructions.map((e) => e.toDomainModel()).toList(),
//     );
//   }
// }
//
// /* ===================== ORDER DETAILS ===================== */
//
// @freezed
// class OrderDetailsModel with _$OrderDetailsModel {
//   const factory OrderDetailsModel({
//     required int id,
//     required String variation,
//     required int quantity,
//     @JsonKey(name: 'sold_by_type') required String soldByType,
//     @JsonKey(name: 'sold_by_name') required String soldByName,
//     @JsonKey(name: 'available_return_qty')
//     required int availableReturnQty,
//     @JsonKey(name: 'delivery_type') required String deliveryType,
//     required String price,
//     required String tax,
//     @JsonKey(name: 'vip_offer_discount')
//     required String vipOfferDiscount,
//     @JsonKey(name: 'shareholder_discount')
//     required String shareholderDiscount,
//     required ProductModel product,
//     @JsonKey(name: 'review_is_available')
//     required bool reviewIsAvailable,
//     @JsonKey(name: 'msg_cant_review') required String msgCantReview,
//     dynamic review,
//     @JsonKey(name: 'shipped_by') required String shippedBy,
//     @JsonKey(name: 'picker_notes') required String pickerNotes,
//   }) = _OrderDetailsModel;
//
//   factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
//       _$OrderDetailsModelFromJson(json);
//
//   OrderItem toDomainModel() {
//     return OrderItem(
//       id: id,
//       quantity: quantity,
//       price: double.parse(price),
//       product: product.toDomainModel(),
//     );
//   }
// }
//
// /* ===================== PRODUCT ===================== */
//
// @freezed
// class ProductModel with _$ProductModel {
//   const factory ProductModel({
//     required int id,
//     required String name,
//     required String unit,
//     required String barcode,
//     @JsonKey(name: 'is_fresh') required bool isFresh,
//     @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
//     required List<String> images,
//     @JsonKey(name: 'currency_symbol') required String currencySymbol,
//     required VariantModel variant,
//     @JsonKey(name: 'category_name') required String categoryName,
//     @JsonKey(name: 'brand_name') required String brandName,
//   }) = _ProductModel;
//
//   factory ProductModel.fromJson(Map<String, dynamic> json) =>
//       _$ProductModelFromJson(json);
//
//   Product toDomainModel() {
//     return Product(
//       id: id,
//       name: name,
//       image: thumbnailImage,
//       price: double.parse(variant.mainPrice),
//     );
//   }
// }
//
// /* ===================== VARIANT ===================== */
//
// @freezed
// class VariantModel with _$VariantModel {
//   const factory VariantModel({
//     required int id,
//     required String sku,
//     @JsonKey(name: 'main_price') required String mainPrice,
//     @JsonKey(name: 'current_stock') required int currentStock,
//     @JsonKey(name: 'currency_symbol') required String currencySymbol,
//   }) = _VariantModel;
//
//   factory VariantModel.fromJson(Map<String, dynamic> json) =>
//       _$VariantModelFromJson(json);
// }
//
// /* ===================== DELIVERY INSTRUCTION ===================== */
//
// @freezed
// class DeliveryInstructionModel with _$DeliveryInstructionModel {
//   const factory DeliveryInstructionModel({
//     required int id,
//     required String name,
//     required String image,
//   }) = _DeliveryInstructionModel;
//
//   factory DeliveryInstructionModel.fromJson(Map<String, dynamic> json) =>
//       _$DeliveryInstructionModelFromJson(json);
//
//   DeliveryInstruction toDomainModel() {
//     return DeliveryInstruction(
//       id: id,
//       name: name,
//       image: image,
//     );
//   }
// }
