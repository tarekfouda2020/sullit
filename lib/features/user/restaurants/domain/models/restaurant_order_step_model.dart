import 'package:flutter_tdd/res.dart';

class RestaurantOrderStepModel {
  final String icon;
  final String title;

  const RestaurantOrderStepModel({
    required this.icon,
    required this.title,
  });

  static const List<RestaurantOrderStepModel> flowSteps = [
    RestaurantOrderStepModel(icon: Res.shopCart, title: "Cart"),
    RestaurantOrderStepModel(icon: Res.payHand, title: "Receiving Method"),
    RestaurantOrderStepModel(icon: Res.visaCards, title: "Payment Checkout"),
    RestaurantOrderStepModel(icon: Res.successIcon, title: "Success"),
  ];
}