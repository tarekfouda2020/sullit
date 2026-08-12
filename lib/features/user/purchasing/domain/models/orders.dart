import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/insurance_company.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_attachment_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_branch_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/enums/order_type_enum.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/enum/track_order_enum.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_discount_domain.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_driver_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_card_domain_model.dart';

import '../enum/order_payment_type.dart';

class Orders extends BaseDomainModel {
  int id;
  String code;
  String orderType;
  bool availableReturnOrder;
  bool showButtonPay;
  String subtotal;
  String shipping;
  String tax;
  String couponDiscount;
  String total;
  int totalItems;
  int bagCount;
  String date;
  String deliveryStatusConst;
  String deliveryStatus;
  bool deliveryViewed;
  bool paymentStatusViewed;
  bool paymentStatus;
  String paymentStatusText;
  bool availableCancelOrder;
  String? additionalInfo;
  String paymentMethod;
  String paymentMethodConst;
  String shippingMethod;
  String orderStatus;
  String orderDate;
  String shippingAddress;
  String customerName;
  String customerEmail;
  String returnReason;
  String soldByType;
  String soldBy;
  String? serviceFees;
  String? technologyFees;
  String? vatFeeAmount;
  String customerPhone;
  List<OrderDetails> orderDetails;
  bool selected = false;
  String totalFeeAmount;
  bool loyaltyPointsApplied;
  int loyaltyPoints;
  String loyaltyPointsValue;
  String shopType;
  int expectedLoyaltyPoints;
  String environmentFees;
  String? driverNotes;
  String? pickerNotes;
  String? orderSourceLabel;
  String? shippingProvider;
  String? shippingProviderLabel;
  InsuranceCompany? insuranceCompany;
  OrderDriverDomainModel? driverModel;
  List<DeliveryInstructionModel>? instructions;
  List<OrderDiscountDomain>? orderDiscounts;
  bool? isPendingReview;
 bool? awaitingCustomerCompletion;
   bool? requiresPrescriptionReview;
  bool? insuranceApplied;
  bool? allowReplacement;
  String? cancelReason;
  List<PharmacyAttachmentDomainModel>? insuranceAttachments;
  List<PharmacyAttachmentDomainModel>? prescriptionAttachments;
  String? identityDocumentFile;
  String? requestedBy;
  String? requestedByLabel;
  String? pharmacyReply;
  PharmacyBranchDomainModel? branch;
  ShopCardDomainModel? shop;
  String? creationMethod;
  String? creationMethodLabel;


  Orders({
    required this.id,
    required this.code,
    required this.orderType,
    required this.availableReturnOrder,
    required this.showButtonPay,
    required this.subtotal,
    required this.bagCount,
    required this.shipping,
    required this.tax,
    required this.couponDiscount,
    required this.total,
    required this.date,
    required this.deliveryStatusConst,
    required this.deliveryStatus,
    required this.deliveryViewed,
    required this.paymentStatusViewed,
    required this.paymentStatus,
    required this.paymentStatusText,
    required this.availableCancelOrder,
    this.additionalInfo,
    required this.paymentMethod,
    required this.shopType,
    required this.paymentMethodConst,
    required this.shippingMethod,
    required this.orderStatus,
    required this.orderDate,
    required this.shippingAddress,
    required this.customerName,
    required this.customerEmail,
    required this.returnReason,
    required this.orderDetails,
    required this.soldByType,
    required this.soldBy,
    required this.customerPhone,
    required this.loyaltyPointsValue,
    required this.loyaltyPointsApplied,
    required this.loyaltyPoints,
    required this.totalItems,
    required this.totalFeeAmount,
    required this.expectedLoyaltyPoints,
    required this.environmentFees,
    this.driverModel,
    this.serviceFees,
    this.technologyFees,
    this.vatFeeAmount,
    this.driverNotes,
    this.instructions,
    this.orderDiscounts,
    this.pickerNotes,
    this.orderSourceLabel,
    this.shippingProvider,
    this.shippingProviderLabel,
    this.isPendingReview,
    this.awaitingCustomerCompletion,
    this.requiresPrescriptionReview,
    this.insuranceApplied,
    this.allowReplacement,
    this.insuranceAttachments,
    this.prescriptionAttachments,
    this.insuranceCompany,
    this.cancelReason,
    this.identityDocumentFile,
    this.requestedBy,
    this.requestedByLabel,
    this.pharmacyReply,
    this.branch,
    this.shop,
    this.creationMethod,
    this.creationMethodLabel,
  });

  int totalItemsCount() => orderDetails.fold(
      0, (previousValue, element) => previousValue + element.quantity);

  bool get isInStore => creationMethod == "in_store";

  DateTime get getOrderDate =>
      DateTimeHelper.convertToDateTime(strDate: orderDate);

  double getDiscountNumber() {
    var currencySymbol = orderDetails.first.product?.currencySymbol;
    String number = couponDiscount.replaceAll(currencySymbol ?? '', "");
    double discount = double.parse(number);
    return discount;
  }

  bool get isCouponApply => getDiscountNumber() > 0;

  double get totalServiceFess =>
      double.parse(technologyFees ?? "0.0") +
      double.parse(serviceFees ?? "0.0");

  double get totalVat =>
      double.parse(tax) + double.parse(vatFeeAmount ?? "0.0");

  TrackOrderEnum get getTrackOrderStatus {
    /// at first its Placed
    ///  Confirmed
    /// Picked Up
    /// On The Way in this step you can cancel it
    /// Delivered
    /// Cancelled

    switch (deliveryStatusConst) {
      case "placed":
        return TrackOrderEnum.placed;
      case "confirmed":
        return TrackOrderEnum.confirmed;
      case "preparing":
        return TrackOrderEnum.preparing;
      case "ready_for_delivery":
        return TrackOrderEnum.readyForDelivery;
      case "on_the_way":
        return TrackOrderEnum.onTheWay;
      case "picked_up":
        return TrackOrderEnum.pickedUp;
      case "delivered":
        return TrackOrderEnum.delivered;
      case "cancelled":
        return TrackOrderEnum.cancelled;
      default:
        return TrackOrderEnum.placed;
    }
  }

  OrderPaymentType orderPaymentType() {
    switch (paymentMethodConst) {
      case "cash_on_delivery":
        return OrderPaymentType.cash;
      case "paymob":
        return OrderPaymentType.paymob;
      case "wallet":
        return OrderPaymentType.wallet;
      default:
        return OrderPaymentType.paymob;
    }
  }

  bool get isPaymentCash => orderPaymentType() == OrderPaymentType.cash;

  bool get isPaymentOnline =>
      orderPaymentType() != OrderPaymentType.cash &&
      orderPaymentType() != OrderPaymentType.wallet;

  bool get isPaid => paymentStatus;

  bool get isDelivered => getTrackOrderStatus == TrackOrderEnum.delivered;

  bool get isCanceled => getTrackOrderStatus == TrackOrderEnum.cancelled;

  bool get isPlaced => getTrackOrderStatus == TrackOrderEnum.placed;

  bool get isConfirmed => getTrackOrderStatus == TrackOrderEnum.confirmed;

  bool get showUnPaidOnlineOrderActions =>
      isPaymentOnline && !isPaid && !isCanceled;



   OrderTypeEnum orderTypeEnum() {
     if(shopType == "pharmacy") {
       return OrderTypeEnum.pharmacy ;
     }else{
       return OrderTypeEnum.general ;
     }
   }

   bool get  isPharmacy => orderTypeEnum() == OrderTypeEnum.pharmacy;


  bool get pharmNormalOrder {

    return  requiresPrescriptionReview == false;
  }
  bool get pharmOrderWithPrescription => requiresPrescriptionReview == true;

  bool get pharmOrderWithInsurance => insuranceApplied == true;


}
