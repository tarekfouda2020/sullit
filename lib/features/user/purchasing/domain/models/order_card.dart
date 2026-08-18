import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/enums/order_type_enum.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/enum/track_order_enum.dart';

import '../enum/order_payment_type.dart';

class OrderCardDomainModel extends BaseDomainModel {
  final int id;
  final String code;
  final String shopType;
  final bool isPendingReview;
  final bool awaitingCustomerCompletion;
  final bool requiresPrescriptionReview;
  final bool insuranceApplied;
  final String orderType;
  final String deliveryStatusConst;
  final String deliveryStatus;
  final String soldByType;
  final String soldBy;
  final String orderStatus;
  final String orderDate;
  final bool paymentStatus;
  final String paymentStatusText;
  final bool paymentStatusViewed;
  final String total;
  final String paymentMethod;
  final String paymentMethodConst;
  final String shippingType;
  bool? availableCancelOrder;

  bool selected = false;

  OrderCardDomainModel({
    required this.id,
    required this.code,
    required this.shopType,
    required this.isPendingReview,
    required this.awaitingCustomerCompletion,
    required this.requiresPrescriptionReview,
    required this.insuranceApplied,
    required this.orderType,
    required this.deliveryStatusConst,
    required this.deliveryStatus,
    required this.soldByType,
    required this.soldBy,
    required this.orderStatus,
    required this.orderDate,
    required this.paymentStatus,
    required this.paymentStatusText,
    required this.paymentStatusViewed,
    required this.total,
    required this.paymentMethod,
    required this.paymentMethodConst,
    required this.shippingType,
    this.availableCancelOrder,
  });

  DateTime get getOrderDate =>
      DateTimeHelper.convertToDateTime(strDate: orderDate);

  TrackOrderEnum get getTrackOrderStatus {
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

  bool get showUnPaidOnlineOrderActions =>
      isPaymentOnline && !isPaid && !isCanceled;

  OrderTypeEnum orderTypeEnum() {
    if (shopType == "pharmacy") {
      return OrderTypeEnum.pharmacy;
    } else {
      return OrderTypeEnum.general;
    }
  }

  bool get isPharmacy => orderTypeEnum() == OrderTypeEnum.pharmacy;
}
