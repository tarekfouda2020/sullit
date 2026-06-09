import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_attachment_model/pharmacy_attachment_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_order_item_model/pharmacy_order_item_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_attachment_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_order_details_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_order_item_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy_order_details_model.freezed.dart';
part 'pharmacy_order_details_model.g.dart';

@freezed
@immutable
class PharmacyOrderDetailsModel extends BaseApiModel<PharmacyOrderDetailsDomainModel>
    with _$PharmacyOrderDetailsModel {
  const PharmacyOrderDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PharmacyOrderDetailsModel({
    int? id,
    String? code,
    @JsonKey(name: 'shop_type') String? shopType,
    @JsonKey(name: 'is_pending_review') bool? isPendingReview,
    @JsonKey(name: 'awaiting_customer_completion') bool? awaitingCustomerCompletion,
    @JsonKey(name: 'requires_prescription_review') bool? requiresPrescriptionReview,
    @JsonKey(name: 'insurance_applied') bool? insuranceApplied,
    @JsonKey(name: 'order_type') String? orderType,
    @JsonKey(name: 'available_return_order') bool? availableReturnOrder,
    @JsonKey(name: 'show_button_pay') bool? showButtonPay,
    @JsonKey(name: 'loyalty_points_applied') bool? loyaltyPointsApplied,
    @JsonKey(name: 'loyalty_points') int? loyaltyPoints,
    @JsonKey(name: 'expected_loyalty_points') int? expectedLoyaltyPoints,
    @JsonKey(name: 'bag_count') int? bagCount,
    @JsonKey(name: 'total_items') int? totalItems,
    @JsonKey(name: 'sold_by_type') String? soldByType,
    @JsonKey(name: 'sold_by_name') String? soldByName,
    String? subtotal,
    String? shipping,
    String? tax,
    @JsonKey(name: 'coupon_discount') String? couponDiscount,
    @JsonKey(name: 'service_fees') String? serviceFees,
    @JsonKey(name: 'environment_fees') String? environmentFees,
    @JsonKey(name: 'technology_fees') String? technologyFees,
    @JsonKey(name: 'vat_fee_amount') String? vatFeeAmount,
    @JsonKey(name: 'total_fee_amount') String? totalFeeAmount,
    @JsonKey(name: 'loyalty_points_value') String? loyaltyPointsValue,
    String? total,
    String? date,
    @JsonKey(name: 'cancel_reason') String? cancelReason,
    @JsonKey(name: 'delivery_status_const') String? deliveryStatusConst,
    @JsonKey(name: 'delivery_status') String? deliveryStatus,
    @JsonKey(name: 'delivery_viewed') bool? deliveryViewed,
    @JsonKey(name: 'payment_status_viewed') bool? paymentStatusViewed,
    @JsonKey(name: 'payment_status') bool? paymentStatus,
    @JsonKey(name: 'payment_status_text') String? paymentStatusText,
    @JsonKey(name: 'available_cancel_order') bool? availableCancelOrder,
    @JsonKey(name: 'additional_info') String? additionalInfo,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @JsonKey(name: 'payment_method_key') String? paymentMethodKey,
    @JsonKey(name: 'shipping_method') String? shippingMethod,
    @JsonKey(name: 'order_status') String? orderStatus,
    @JsonKey(name: 'order_date') String? orderDate,
    @JsonKey(name: 'shipping_address') String? shippingAddress,
    @JsonKey(name: 'customer_name') String? customerName,
    @JsonKey(name: 'customer_email') String? customerEmail,
    @JsonKey(name: 'customer_phone') String? customerPhone,
    @JsonKey(name: 'return_reason') String? returnReason,
    @Default([]) @JsonKey(name: 'order_details') List<PharmacyOrderItemModel> orderDetails,
    @JsonKey(name: 'shipping_type') String? shippingType,
    @JsonKey(name: 'driver_notes') String? driverNotes,
    @JsonKey(name: 'picker_notes') String? pickerNotes,
    @Default([]) @JsonKey(name: 'insurance_attachments') List<PharmacyAttachmentModel> insuranceAttachments,
    @Default([]) @JsonKey(name: 'prescription_attachments') List<PharmacyAttachmentModel> prescriptionAttachments,
  }) = _PharmacyOrderDetailsModel;

  factory PharmacyOrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PharmacyOrderDetailsModelFromJson(json);

  @override
  PharmacyOrderDetailsDomainModel toDomainModel() {
    return PharmacyOrderDetailsDomainModel(
      id: id,
      code: code,
      shopType: shopType,
      isPendingReview: isPendingReview,
      awaitingCustomerCompletion: awaitingCustomerCompletion,
      requiresPrescriptionReview: requiresPrescriptionReview,
      insuranceApplied: insuranceApplied,
      orderType: orderType,
      availableReturnOrder: availableReturnOrder,
      showButtonPay: showButtonPay,
      loyaltyPointsApplied: loyaltyPointsApplied,
      loyaltyPoints: loyaltyPoints,
      expectedLoyaltyPoints: expectedLoyaltyPoints,
      bagCount: bagCount,
      totalItems: totalItems,
      soldByType: soldByType,
      soldByName: soldByName,
      subtotal: subtotal,
      shipping: shipping,
      tax: tax,
      couponDiscount: couponDiscount,
      serviceFees: serviceFees,
      environmentFees: environmentFees,
      technologyFees: technologyFees,
      vatFeeAmount: vatFeeAmount,
      totalFeeAmount: totalFeeAmount,
      loyaltyPointsValue: loyaltyPointsValue,
      total: total,
      date: date,
      cancelReason: cancelReason,
      deliveryStatusConst: deliveryStatusConst,
      deliveryStatus: deliveryStatus,
      deliveryViewed: deliveryViewed,
      paymentStatusViewed: paymentStatusViewed,
      paymentStatus: paymentStatus,
      paymentStatusText: paymentStatusText,
      availableCancelOrder: availableCancelOrder,
      additionalInfo: additionalInfo,
      paymentMethod: paymentMethod,
      paymentMethodKey: paymentMethodKey,
      shippingMethod: shippingMethod,
      orderStatus: orderStatus,
      orderDate: orderDate,
      shippingAddress: shippingAddress,
      customerName: customerName,
      customerEmail: customerEmail,
      customerPhone: customerPhone,
      returnReason: returnReason,
      orderDetails: orderDetails
          .map<PharmacyOrderItemDomainModel>((e) => e.toDomainModel())
          .toList(),
      shippingType: shippingType,
      driverNotes: driverNotes,
      pickerNotes: pickerNotes,
      insuranceAttachments: insuranceAttachments
          .map<PharmacyAttachmentDomainModel>((e) => e.toDomainModel())
          .toList(),
      prescriptionAttachments: prescriptionAttachments
          .map<PharmacyAttachmentDomainModel>((e) => e.toDomainModel())
          .toList(),
    );
  }
}
