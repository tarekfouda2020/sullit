import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class AiChatShopCard extends BaseDomainModel {
  final int? id;
  final String? name;
  final String? logo;
  final String? typeLabel;
  final num? rating;

  const AiChatShopCard({
    this.id,
    this.name,
    this.logo,
    this.typeLabel,
    this.rating,
  });
}
