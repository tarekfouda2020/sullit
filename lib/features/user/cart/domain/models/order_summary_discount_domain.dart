import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class OrderSummaryDiscountDomain extends BaseDomainModel {
  final String label;
  final String description;
  final String type;
  final String discount;

  OrderSummaryDiscountDomain({
    required this.label,
    required this.description,
    required this.type,
    required this.discount,
  });



  bool get isTierDiscount => type == "subscription_order_discount";



}
