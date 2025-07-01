import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PaymentOption extends BaseDomainModel {
  String paymentType;

  String paymentTypeKey;

  String image;

  String title;

  int offlinePaymentId;

  String details;

  bool selected = false ;

  bool fakeSelected = false ;

  PaymentOption({
    required this.paymentType,
    required this.paymentTypeKey,
    required this.image,
    required this.title,
    required this.details,
    required this.offlinePaymentId,
  });
}
