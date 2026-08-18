import 'dart:ui';

import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/res.dart';

enum TrackOrderEnum {
  /// at first its Placed
  ///  Confirmed
  /// Picked Up
  /// On The Way in this step you can cancel it
  /// Delivered
  /// Cancelled
  placed,
  confirmed,
  preparing,
  readyForDelivery,
  pickedUp,
  onTheWay,
  cancelled,
  delivered;

  int getStepNumber() {
    switch (this) {
      case placed:
        return 1;
      case confirmed:
        return 2;
      case preparing:
        return 3;
      case readyForDelivery:
        return 4;
      case pickedUp:
        return 5;
      case onTheWay:
        return 6;
      case delivered:
        return 7;
      case cancelled:
        return 7;
    }
  }

  Color getOrderStatusColor() {
    switch (this) {
      case placed:
        return AppColors.noContextInstance.harvest;
      case confirmed:
        return AppColors.noContextInstance.green;
      case preparing:
        return AppColors.noContextInstance.primary;
      case readyForDelivery:
        return AppColors.noContextInstance.gold;
      case pickedUp:
        return AppColors.noContextInstance.green;
      case onTheWay:
        return AppColors.noContextInstance.primary;
      case delivered:
        return AppColors.noContextInstance.green;
      case cancelled:
        return AppColors.noContextInstance.redAccent;
    }
  }

  String get imagePath {
    switch (this) {
      case TrackOrderEnum.placed:
        return Res.addToCartGif;
      case TrackOrderEnum.confirmed:
        return Res.confirmed;
      case TrackOrderEnum.preparing:
        return Res.pickedUp;
      case TrackOrderEnum.readyForDelivery:
        return Res.pickedUp;
      case TrackOrderEnum.pickedUp:
        return Res.onTheWay;
      case TrackOrderEnum.onTheWay:
        return Res.onTheWay;
      case TrackOrderEnum.delivered:
        return Res.delivered;
      case TrackOrderEnum.cancelled:
        return '';
    }
  }
}
