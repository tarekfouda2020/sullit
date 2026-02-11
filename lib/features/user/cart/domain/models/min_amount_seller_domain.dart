import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class MinAmountSellerDomain extends BaseDomainModel {
  final int id;
  final String name;
  final String message;
  final double minOrderAmount;

  MinAmountSellerDomain({
    required this.id,
    required this.name,
    required this.message,
    required this.minOrderAmount,
  });
}
