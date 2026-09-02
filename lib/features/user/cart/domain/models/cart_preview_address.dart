import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_seller.dart';

class CartPreviewAddress extends BaseDomainModel {
  final bool hasChanges;
  final List<CartPreviewSeller> sellers;

  CartPreviewAddress({
    this.hasChanges = false,
    this.sellers = const [],
  });
}
