import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/features/user/products/domain/behavior/product_behavior_x.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart';

abstract class BaseProductItem extends StatefulWidget {
  final Product productModel;
  final VoidCallback onFavRefresh;
  final VoidCallback? onCompareRefresh;
  final VoidCallback? afterAddToCart;
  final VoidCallback? onRefresh;
  final Future<void> Function()? onPressDecrease;
  final Future<void> Function()? onPressDelete;
  final bool? showVipDiscount;
  final EdgeInsetsDirectional? margin;

  /// Branch id from the surrounding page context (e.g. product-details
  /// page entered via a pharmacy branch). Passed to
  /// [ProductBehavior.addToCart] as the preferred branch. Pharmacy behavior
  /// falls back to the product's own branch when null.
  final int? fallbackBranchId;

  const BaseProductItem({
    super.key,
    required this.productModel,
    required this.onFavRefresh,
    this.onCompareRefresh,
    this.showVipDiscount,
    this.afterAddToCart,
    this.onRefresh,
    this.onPressDecrease,
    this.onPressDelete,
    this.margin,
    this.fallbackBranchId,
  });
}

abstract class BaseProductItemState<T extends BaseProductItem>
    extends State<T> {
  final GenericBloc<bool> showFavLoading = GenericBloc<bool>(false);
  final GenericBloc<bool> enableAddToCartLoading = GenericBloc<bool>(false);

  @override
  void initState() {
    super.initState();
    checkIfItemInCart();
  }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.productModel.id == oldWidget.productModel.id) {
      checkIfItemInCart();
    }
  }

  Future<void> toggleFavourite(BuildContext context) async {
    ProductsHelper().toggleFavourite(
      id: widget.productModel.id!,
      context: context,
      loadingBloc: showFavLoading,
      price: widget.productModel.priceHighLow,
      onRefresh: widget.onFavRefresh,
    );
  }

  @protected
  bool handleOutOfStockGuard() {
    if ((widget.productModel.isOutOfStock ||
            widget.productModel.sameQntInCart) &&
        widget.productModel.isFreshProduct == false) {
      CustomToast.showSimpleToast(msg: tr("outOfStock"), type: ToastType.error);
      return true;
    }
    return false;
  }

  @protected
  Future<bool> handleFirstAddToCart(BuildContext context) async {
    Product product = widget.productModel;

    if ((product.addedQtyToCart ?? 0) > 0) {
      return false;
    }

    enableAddToCartLoading.onUpdateData(true);

    try {
      final result = await product.behavior.addToCart(
        context,
        product,
        product.minQty ?? 1,
        fallbackBranchId: widget.fallbackBranchId,
        afterAddToCart: afterAddToCartCallback,
      );
      return result ?? false;
    } finally {
      enableAddToCartLoading.onUpdateData(false);
    }
  }

  @protected
  bool handleMaxQtyGuard(int qnt) {
    if (widget.productModel.maxQnt == widget.productModel.addedQtyToCart) {
      enableAddToCartLoading.onUpdateData(false);
      CustomToast.showSimpleToast(
        msg: 'You can add up to ${widget.productModel.maxQnt} items only',
      );
      return true;
    }
    return false;
  }

  @protected
  Future<void> addToCart(BuildContext context);

  @protected
  Future<void> onPressReduce();

  @protected
  Future<void> reduceQntFromCart(int qnt);

  @protected
  Future<void> deleteItemFromCart();

  @protected
  Future<void> routeToDetails(BuildContext context);

  @protected
  void checkIfItemInCart();

  @protected
  void afterAddToCartCallback();

  @override
  Widget build(BuildContext context);
}
