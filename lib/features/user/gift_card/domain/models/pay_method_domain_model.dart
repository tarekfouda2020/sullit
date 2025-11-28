import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/data/enum/pay_type_enum.dart';

class PayMethodDomainModel extends BaseDomainModel {
  final String paymentType;
  final String paymentTypeKey;
  final int offlinePaymentId;
  final String image;
  final String details;
  final String name;
  final String title;
   bool isSelected;

  PayMethodDomainModel({
    required this.paymentType,
    required this.paymentTypeKey,
    required this.offlinePaymentId,
    required this.image,
    required this.details,
    required this.name,
    required this.title,
     this.isSelected = false,
  });



  /// there is no cash option in giftCard payment
  PayTypeEnum getPaymentType() {
    switch (paymentTypeKey) {
      case "paymob":
        return PayTypeEnum.paymob;
      case "stripe":
        return PayTypeEnum.stripe;
      case "wallet":
        return PayTypeEnum.wallet;
      case "cash_on_delivery":
        return PayTypeEnum.cash;
      default:
        return PayTypeEnum.paymob;
    }
  }


}
