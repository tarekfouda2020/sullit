import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class CartPreviewRemovedItem extends BaseDomainModel {
  final int id;
  final int productId;
  final String productName;
  final String reason;

  CartPreviewRemovedItem({
    required this.id,
    required this.productId,
    required this.productName,
    required this.reason,
  });
}
