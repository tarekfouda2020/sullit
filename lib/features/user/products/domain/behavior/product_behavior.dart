import 'package:flutter/material.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

/// Strategy per [ProductType]. Every operation that used to fork on
/// `isPharmProduct` lives here. Add-a-new-type = new impl + one registry line.
abstract class ProductBehavior {
  /// Which cart bucket this product belongs to.
  CartTypeEnum get cartType;

  /// Whether the app should locally increment the cart-count badge after add.
  /// General: true. Pharmacy: false (relies on cart refetch).
  bool get bumpsCartCountLocally;

  /// Perform the first add-to-cart for this product.
  Future<bool?> addToCart(
    BuildContext context,
    Product product,
    int qty, {
    int? fallbackBranchId,
    VoidCallback? afterAddToCart,
  });
}
