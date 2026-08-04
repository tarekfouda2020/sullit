import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class SubscribePaymentDomainModel extends BaseDomainModel {
  final String? transactionUrl;

  SubscribePaymentDomainModel({
    required this.transactionUrl,
  });
}
