import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_branch.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_removed_item.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_updated_item.dart';

class CartPreviewSeller extends BaseDomainModel {
  final int ownerId;
  final String sellerName;
  final String shopName;
  final bool branchChanged;
  final CartPreviewBranch? fromBranch;
  final CartPreviewBranch? toBranch;
  final bool deliveryAvailable;
  final String? deliveryMessage;
  final List<CartPreviewRemovedItem> removed;
  final List<CartPreviewUpdatedItem> updated;

  CartPreviewSeller({
    required this.ownerId,
    required this.sellerName,
    required this.shopName,
    required this.branchChanged,
    this.fromBranch,
    this.toBranch,
    required this.deliveryAvailable,
    this.deliveryMessage,
    this.removed = const [],
    this.updated = const [],
  });
}
