import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/data/enum/pay_type_enum.dart';

class PaymentOption extends BaseDomainModel {
  String paymentType;

  String paymentTypeKey;

  String image;

  String title;

  int offlinePaymentId;

  String details;

  bool selected = false;

  bool fakeSelected = false;

  PaymentOption({
    required this.paymentType,
    required this.paymentTypeKey,
    required this.image,
    required this.title,
    required this.details,
    required this.offlinePaymentId,
  });

  PayTypeEnum getPaymentType() {
    switch (paymentTypeKey) {
      case "tap":
        return PayTypeEnum.tap;
      case "stripe":
        return PayTypeEnum.stripe;
      case "wallet":
        return PayTypeEnum.wallet;
      case "cash_on_delivery":
        return PayTypeEnum.cash;
      default:
        return PayTypeEnum.wallet;
    }
  }
}
