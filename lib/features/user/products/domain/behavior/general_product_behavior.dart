import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/facebook_events_helper.dart';
import 'package:flutter_tdd/features/user/base/presentation/manager/count_cubit/count_cubit.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/products/domain/behavior/product_behavior.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:injectable/injectable.dart';

@injectable
class GeneralProductBehavior implements ProductBehavior {
  @override
  CartTypeEnum get cartType => CartTypeEnum.general;

  @override
  bool get bumpsCartCountLocally => true;

  @override
  Future<bool?> addToCart(
    BuildContext context,
    ProductCard product,
    int qty, {
    int? fallbackBranchId,
    VoidCallback? afterAddToCart,
  }) async {
    final existCount = context.read<CountCubit>().state.cartCount;
    return getIt<CartHelper>().addProductToCart(
      context,
      qty,
      product.variant?.id,
      showLoader: false,
      branchId: product.branch?.id,
      onAddCartFunc: () {
        FacebookEventsHelper.instance.productAddToCart(
          price: product.variant?.calculablePrice ?? '',
          id: product.id,
        );
        if (bumpsCartCountLocally) {
          getIt<CartHelper>().updateCartCount(context, qty + existCount);
        }
        afterAddToCart?.call();
      },
    );
  }
}
