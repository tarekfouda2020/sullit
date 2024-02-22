import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/payment_option.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping_summary.dart';

class Shipping implements BaseDomainModel {
  ShippingSummary summary;
  List<PaymentOption>? paymentOption;
  bool? isAdminDiscount;
  int? discountRate;
  double? discountVal;

  Shipping({
    required this.summary,
    required this.paymentOption,
     this.discountRate,
     this.isAdminDiscount,
    this.discountVal,
  });
}
