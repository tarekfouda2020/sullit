import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class AiChatCartItem extends BaseDomainModel {
  final int? id;
  final int? quantity;
  final String? name;

  const AiChatCartItem({this.id, this.quantity, this.name});
}
