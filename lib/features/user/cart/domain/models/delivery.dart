import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Delivery extends BaseDomainModel{
  String? transitIn;
  String? shippingCost;
  bool selected = false;

  Delivery({this.transitIn, this.shippingCost,});

  bool get isShippingFree => shippingCost == "Free Shipping";
}
