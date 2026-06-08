import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class PaymentMethodDomainModel extends BaseDomainModel {
  String paymentType;
  String paymentTypeKey;
  String image;
  String name;
  String title;
  int offlinePaymentId;
  String details;

  PaymentMethodDomainModel(
      {required this.paymentType,
      required this.paymentTypeKey,
      required this.image,
      required this.name,
      required this.title,
      required this.offlinePaymentId,
      required this.details});
}
