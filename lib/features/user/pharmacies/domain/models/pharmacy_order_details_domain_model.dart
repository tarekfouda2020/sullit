import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_attachment_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_order_item_domain_model.dart';

class PharmacyOrderDetailsDomainModel extends BaseDomainModel {
  final int? id;
  final String? code;
  final String? shopType;
  final bool? isPendingReview;
  final bool? awaitingCustomerCompletion;
  final bool? requiresPrescriptionReview;
  final bool? insuranceApplied;
  final String? orderType;
  final bool? availableReturnOrder;
  final bool? showButtonPay;
  final bool? loyaltyPointsApplied;
  final int? loyaltyPoints;
  final int? expectedLoyaltyPoints;
  final int? bagCount;
  final int? totalItems;
  final String? soldByType;
  final String? soldByName;
  final String? subtotal;
  final String? shipping;
  final String? tax;
  final String? couponDiscount;
  final String? serviceFees;
  final String? environmentFees;
  final String? technologyFees;
  final String? vatFeeAmount;
  final String? totalFeeAmount;
  final String? loyaltyPointsValue;
  final String? total;
  final String? date;
  final String? cancelReason;
  final String? deliveryStatusConst;
  final String? deliveryStatus;
  final bool? deliveryViewed;
  final bool? paymentStatusViewed;
  final bool? paymentStatus;
  final String? paymentStatusText;
  final bool? availableCancelOrder;
  final String? additionalInfo;
  final String? paymentMethod;
  final String? paymentMethodKey;
  final String? shippingMethod;
  final String? orderStatus;
  final String? orderDate;
  final String? shippingAddress;
  final String? customerName;
  final String? customerEmail;
  final String? customerPhone;
  final String? returnReason;
  final List<PharmacyOrderItemDomainModel> orderDetails;
  final String? shippingType;
  final String? driverNotes;
  final String? pickerNotes;
  final List<PharmacyAttachmentDomainModel> insuranceAttachments;
  final List<PharmacyAttachmentDomainModel> prescriptionAttachments;

  PharmacyOrderDetailsDomainModel({
    this.id,
    this.code,
    this.shopType,
    this.isPendingReview,
    this.awaitingCustomerCompletion,
    this.requiresPrescriptionReview,
    this.insuranceApplied,
    this.orderType,
    this.availableReturnOrder,
    this.showButtonPay,
    this.loyaltyPointsApplied,
    this.loyaltyPoints,
    this.expectedLoyaltyPoints,
    this.bagCount,
    this.totalItems,
    this.soldByType,
    this.soldByName,
    this.subtotal,
    this.shipping,
    this.tax,
    this.couponDiscount,
    this.serviceFees,
    this.environmentFees,
    this.technologyFees,
    this.vatFeeAmount,
    this.totalFeeAmount,
    this.loyaltyPointsValue,
    this.total,
    this.date,
    this.cancelReason,
    this.deliveryStatusConst,
    this.deliveryStatus,
    this.deliveryViewed,
    this.paymentStatusViewed,
    this.paymentStatus,
    this.paymentStatusText,
    this.availableCancelOrder,
    this.additionalInfo,
    this.paymentMethod,
    this.paymentMethodKey,
    this.shippingMethod,
    this.orderStatus,
    this.orderDate,
    this.shippingAddress,
    this.customerName,
    this.customerEmail,
    this.customerPhone,
    this.returnReason,
    this.orderDetails = const [],
    this.shippingType,
    this.driverNotes,
    this.pickerNotes,
    this.insuranceAttachments = const [],
    this.prescriptionAttachments = const [],
  });
}
