import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class AiChatCartItem extends BaseDomainModel {
  final int? id;
  final String name;
  final int quantity;
  final String price;
  final String? thumbnailImage;
  final int? productId;
  final String total;
  final String currencySymbol;

  const AiChatCartItem({
    this.id,
    this.name = '',
    this.quantity = 0,
    this.price = '',
    this.thumbnailImage,
    this.productId,
    this.total = '',
    this.currencySymbol = '',
  });
}
