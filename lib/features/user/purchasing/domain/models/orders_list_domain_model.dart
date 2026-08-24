import 'package:flutter_tdd/core/helpers/date_time_helper.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/enums/order_type_enum.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/enum/track_order_enum.dart';

class OrdersListDomainModel extends BaseDomainModel {
  final int id;
  final String code;
  final String shopType;
  final bool isPendingReview;
  final bool awaitingCustomerCompletion;
  final bool requiresPrescriptionReview;
  final bool insuranceApplied;
  final String orderType;
  final String deliveryStatus;
  final String soldByType;
  final String soldByName;
  final String orderStatus;
  final String orderDate;
  final bool paymentStatus;
  final String paymentStatusText;
  final bool paymentStatusViewed;
  final String total;
  final String paymentMethod;
  final String paymentMethodKey;
  final String shippingType;

  String deliveryStatusConst;


  OrdersListDomainModel({
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
    required this.soldByName,
    required this.orderStatus,
    required this.orderDate,
    required this.paymentStatus,
    required this.paymentStatusText,
    required this.paymentStatusViewed,
    required this.total,
    required this.paymentMethod,
    required this.paymentMethodKey,
    required this.shippingType,
  });


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

  DateTime get getOrderDate =>
      DateTimeHelper.convertToDateTime(strDate: orderDate);

  OrderTypeEnum orderTypeEnum() {
    if(shopType == "pharmacy") {
      return OrderTypeEnum.pharmacy ;
    }else{
      return OrderTypeEnum.merchant ;
    }
  }

  bool get  isPharmacy => orderTypeEnum() == OrderTypeEnum.pharmacy;

  bool get isCanceled => getTrackOrderStatus == TrackOrderEnum.cancelled;



}
