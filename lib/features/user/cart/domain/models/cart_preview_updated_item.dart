import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class CartPreviewUpdatedItem extends BaseDomainModel {
  final int id;
  final int productId;
  final String productName;
  final int oldQuantity;
  final int quantity;

  CartPreviewUpdatedItem({
    required this.id,
    required this.productId,
    required this.productName,
    required this.oldQuantity,
    required this.quantity,
  });
}
