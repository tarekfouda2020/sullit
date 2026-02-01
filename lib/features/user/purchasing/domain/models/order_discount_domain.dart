import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class OrderDiscountDomain extends BaseDomainModel {
  final int id;
  final String typeDescription;
  final String typeLabel;
  final String type;
  final String discount;
  final String discountValue;

  OrderDiscountDomain({
    required this.id,
    required this.typeLabel,
    required this.type,
    required this.discount,
    required this.discountValue,
    required this.typeDescription,
  });


  bool get isTierDiscount => type == "subscription_order_discount";
}
