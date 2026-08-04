import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/enum/track_order_enum.dart';

class OrderStatusModel extends BaseDomainModel {
  final String status;
  final String createdAt;

  OrderStatusModel({required this.status, required this.createdAt});

  TrackOrderEnum getStatusType() {
    switch (status) {
      case "Placed":
        return TrackOrderEnum.placed;
      case "Confirmed":
        return TrackOrderEnum.confirmed;
      case "Picked Up":
        return TrackOrderEnum.pickedUp;
      case "On The Way":
        return TrackOrderEnum.onTheWay;
      case "Delivered":
        return TrackOrderEnum.delivered;
      case "Cancelled":
        return TrackOrderEnum.cancelled;
      default:
        return TrackOrderEnum.placed;
    }
  }
}
