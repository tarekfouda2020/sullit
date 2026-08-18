import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/data/enum/pay_type_enum.dart';

class PaymentOption extends BaseDomainModel {
  String paymentType;

  String paymentTypeKey;

  String image;

  String title;

  String? name;

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
    this.name,
  });

  PayTypeEnum getPaymentType() {
    switch (paymentTypeKey) {
      case "paymob":
        return PayTypeEnum.paymob;
      case "telr":
        return PayTypeEnum.telr;
      case "wallet":
        return PayTypeEnum.wallet;
      case "cash_on_delivery":
        return PayTypeEnum.cash;
      default:
        return PayTypeEnum.paymob;
    }
  }

  PaymentOption copyWith({
    String? paymentType,
    String? paymentTypeKey,
    String? image,
    String? title,
    int? offlinePaymentId,
    String? details,
    bool? selected,
    bool? fakeSelected,
  }) {
    return PaymentOption(
      paymentType: paymentType ?? this.paymentType,
      paymentTypeKey: paymentTypeKey ?? this.paymentTypeKey,
      image: image ?? this.image,
      title: title ?? this.title,
      details: details ?? this.details,
      offlinePaymentId: offlinePaymentId ?? this.offlinePaymentId,
    )
      ..selected = selected ?? this.selected
      ..fakeSelected = fakeSelected ?? this.fakeSelected;
  }
}
