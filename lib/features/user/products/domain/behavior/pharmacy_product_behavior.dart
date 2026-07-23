import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/facebook_events_helper.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/products/domain/behavior/product_behavior.dart';
import 'package:flutter_tdd/features/user/products/domain/models/pharmacy_product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:injectable/injectable.dart';

@injectable
class PharmacyProductBehavior implements ProductBehavior {
  @override
  CartTypeEnum get cartType => CartTypeEnum.pharmacy;

  @override
  bool get bumpsCartCountLocally => false;

  @override
  Future<bool?> addToCart(
    BuildContext context,
    Product product,
    int qty, {
    int? fallbackBranchId,
    VoidCallback? afterAddToCart,
  }) async {
    final pharm = product is PharmacyProduct ? product : null;
    final resolvedBranchId = fallbackBranchId ?? pharm?.branch?.id;
    return getIt<CartHelper>().addPharmacyProductToCart(
      context,
      qty,
      product.variant?.id,
      resolvedBranchId,
      showLoader: false,
      onAddCartFunc: () {
        FacebookEventsHelper.instance.productAddToCart(
          price: product.variant?.calculablePrice ?? '',
          id: product.id!,
        );
        afterAddToCart?.call();
      },
    );
  }
}
