import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping_summary.dart';

class GiftCardApllieCartDomainModel implements BaseDomainModel {
  ShippingSummary summary;
  String? appliedGiftCard;

  GiftCardApllieCartDomainModel({
    required this.summary,
    this.appliedGiftCard,
  });
}
