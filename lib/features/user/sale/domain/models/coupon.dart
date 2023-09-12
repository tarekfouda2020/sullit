import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Coupon extends BaseDomainModel {
  final int id;
  final String code;
  final String icon;
  final int couponUsagesCount;

  Coupon({
    required this.id,
    required this.code,
    required this.icon,
    required this.couponUsagesCount,
  });
}
