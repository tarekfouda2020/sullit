import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary_discount_domain.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/enum/track_order_enum.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_discount_domain.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_driver_domain_model.dart';

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
  String additionalInfo;
  String paymentMethod;
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
  int expectedLoyaltyPoints;
  String environmentFees;
  String? driverNotes;
  OrderDriverDomainModel? driverModel;
  List<DeliveryInstructionModel>? instructions;
  List<OrderDiscountDomain>? orderDiscounts;

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
    required this.additionalInfo,
    required this.paymentMethod,
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
  });

  int totalItemsCount() => orderDetails.fold(0, (previousValue, element) => previousValue + element.quantity);

  DateTime get getOrderDate => DateTimeHelper.convertToDateTime(strDate: orderDate);

  double getDiscountNumber() {
    var currencySymbol = orderDetails.first.product?.currencySymbol;
    String number = couponDiscount.replaceAll(currencySymbol ?? '', "");
    double discount = double.parse(number);
    return discount;
  }

  bool get isCouponApply => getDiscountNumber() > 0;
  
  double get totalServiceFess => double.parse(technologyFees ?? "0.0" ) + double.parse(serviceFees??"0.0");

  double get totalVat => double.parse(tax) + double.parse(vatFeeAmount ?? "0.0");




  TrackOrderEnum get getTrackOrderStatus {
    /// at first its Placed
    ///  Confirmed
    /// Picked Up
    /// On The Way in this step you can cancel it
    /// Delivered
    /// Cancelled

    switch (deliveryStatus) {
      case "Placed":
        return TrackOrderEnum.placed;
      case "Confirmed":
        return TrackOrderEnum.confirmed;
      case "Preparing":
        return TrackOrderEnum.preparing;
        case "Ready For Delivery":
        return TrackOrderEnum.readyForDelivery;
      case "Picked Up":
        return TrackOrderEnum.pickedUp;
      case "Delivered":
        return TrackOrderEnum.delivered;
      case "Cancelled":
        return TrackOrderEnum.cancelled;
      default:
        return TrackOrderEnum.placed;
    }


  }


  OrderPaymentType orderPaymentType(){
    switch(paymentMethod){
      case "Cash On Delivery" :return OrderPaymentType.cash;
      case "paymob" : return OrderPaymentType.paymob;
      case "Wallet" :return OrderPaymentType.wallet;
      default: return OrderPaymentType.paymob;
    }
  }

  bool get isPaymentCash => orderPaymentType() == OrderPaymentType.cash;

  bool get isPaymentOnline => orderPaymentType() != OrderPaymentType.cash && orderPaymentType() != OrderPaymentType.wallet;

  bool get isPaid => paymentStatus;

  bool get isDelivered => getTrackOrderStatus == TrackOrderEnum.delivered;

  bool get isCanceled => getTrackOrderStatus == TrackOrderEnum.cancelled;

  bool get showUnPaidOnlineOrderActions => isPaymentOnline && !isPaid && !isCanceled;
}
