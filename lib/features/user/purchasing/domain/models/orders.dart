import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/enum/track_order_enum.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';

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
  String customerPhone;
  List<OrderDetails> orderDetails;
  bool selected = false;

  bool loyaltyPointsApplied;
  int loyaltyPoints;
  String loyaltyPointsValue;

  Orders({
    required this.id,
    required this.code,
    required this.orderType,
    required this.availableReturnOrder,
    required this.showButtonPay,
    required this.subtotal,
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
  });

  int totalItemsCount() => orderDetails.fold(0, (previousValue, element) => previousValue + element.quantity);

  DateTime get getOrderDate => DateTimeHelper.convertToDateTime(strDate: orderDate);

  double getDiscountNumber() {
    String number = couponDiscount.replaceAll("د.إ", "");
    number = number.replaceAll("D", "");
    double discount = double.parse(number);
    return discount;
  }

  bool get isCouponApply => getDiscountNumber() > 0;

  TrackOrderEnum get getTrackOrderStatus {
    /// at first its Placed
    ///  Confirmed
    /// Picked Up
    /// On The Way in this step you can cancel it
    /// Delivered
    /// Cancelled

    switch (deliveryStatusConst) {
      case "Placed":
        return TrackOrderEnum.placed;
      case "Confirmed":
        return TrackOrderEnum.placed;
      case "Picked Up":
        return TrackOrderEnum.placed;
      case "Delivered":
        return TrackOrderEnum.delivered;
      case "Cancelled":
        return TrackOrderEnum.delivered;
      default:
        return TrackOrderEnum.placed;
    }
  }
}
