import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_branch.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_removed_item.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_preview_updated_item.dart';

class CartPreviewSeller extends BaseDomainModel {
  final int ownerId;
  final int? shopId;
  final String sellerName;
  final String shopName;
  final bool branchChanged;
  final CartPreviewBranch? fromBranch;
  final CartPreviewBranch? toBranch;
  final bool deliveryAvailable;
  final String? deliveryMessage;
  final List<CartPreviewRemovedItem> removed;
  final List<CartPreviewUpdatedItem> updated;

  final String minimumAmountMsg;
  final String minimumAmount;
  final bool minimumStatus;
  final int totalItemsCount;

  CartPreviewSeller({
    required this.ownerId,
    required this.sellerName,
    required this.shopName,
    required this.branchChanged,
    this.fromBranch,
    this.shopId,
    this.toBranch,
    required this.deliveryAvailable,
    this.deliveryMessage,
    required this.minimumAmountMsg,
    required this.minimumAmount,
    required this.minimumStatus,
    required this.totalItemsCount,
    this.removed = const [],
    this.updated = const [],
  });



  bool get cartHaveBeenCleared => totalItemsCount == 0;

  double get minOrderAmount => double.tryParse(minimumAmount.cleanNumber) ?? 0;

  bool get hasPassMinAmount => minimumStatus;

}
