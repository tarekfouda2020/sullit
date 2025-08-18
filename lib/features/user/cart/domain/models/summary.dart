import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Summary extends BaseDomainModel {
  String orderDate;
  String name;
  String email;
  String shippingAddress;
  String orderStatus;
  String totalOrderAmount;
  String shipping;
  String paymentMethod;

  Summary({
    required this.orderDate,
    required this.name,
    required this.email,
    required this.shippingAddress,
    required this.orderStatus,
    required this.totalOrderAmount,
    required this.shipping,
    required this.paymentMethod,
  });
}
