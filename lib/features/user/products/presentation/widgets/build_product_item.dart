import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/debounce_helper.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/general_cart_item.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart';

import 'base_product_item.dart';
import 'product_item_card_widget/product_item_card_widget.dart';

class BuildProductItem extends BaseProductItem {
  const BuildProductItem({
    super.key,
    required super.productModel,
    required super.onFavRefresh,
    super.onCompareRefresh,
    super.showVipDiscount,
    super.afterAddToCart,
    super.onRefresh,
    super.onPressDecrease,
    super.onPressDelete,
    super.margin,
    super.fallbackBranchId,
  });

  @override
  State<BuildProductItem> createState() => _BuildProductItemState();
}

class _BuildProductItemState extends BaseProductItemState<BuildProductItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? const EdgeInsets.all(0),
      width: 160,
      decoration: CustomDecoration(
          myBoxShadow: const [],
          radius: Dimens.borderRadius12PX,
          boxBorder: Border.all(
            color: context.colors.greyWhite,
          )),
      child: ProductItemCard(
        productModel: widget.productModel,
        showFavLoading: showFavLoading,
        enableAddToCartLoading: enableAddToCartLoading,
        onFavTap: () => toggleFavourite(context),
        onAddToCart: () async => await addToCart(context),
        onPressReduce: () => onPressReduce(),
        onRoutToDetails: () async => await routeToDetails(context),
        showVipDiscount: widget.showVipDiscount,
      ),
    );
  }

  @override
  Future<void> routeToDetails(BuildContext context) async {
    await AutoRouter.of(context).push(
      ProductDetailsRoute(
        isFav: widget.productModel.isWishlist,
        productId: widget.productModel.id,
        isResale: false,
      ),
    );
    widget.onRefresh?.call();
  }

  @override
  Future<void> addToCart(BuildContext context) async {
    if (handleOutOfStockGuard()) return;
    if (await handleFirstAddToCart(context)) return;

    var currentStockQnt = widget.productModel.variant?.currentStock ?? 0;
    int qnt = widget.productModel.addedQtyToCart! + 1;

    if (handleMaxQtyGuard(qnt)) return;

    if (currentStockQnt > qnt || widget.productModel.isFresh == true) {
      widget.productModel.addedQtyToCart = qnt;
      enableAddToCartLoading.onUpdateData(false);
      KeyedDebounceHelper.instance.start(
        key: widget.productModel.id.toString(),
        value: qnt.toString(),
        milliseconds: AppConstants.instance.debounceTimeInBackGround,
        onSearch: (val) => getIt<ProductsHelper>()
            .increaseProductAddedQntInCart(context, widget.productModel, qnt),
      );
    }
  }

  @override
  Future<void> onPressReduce() async {
    final String productKey = widget.productModel.id.toString();
    if (widget.productModel.addedQtyToCart == widget.productModel.minQty) {
      await deleteItemFromCart();
    } else {
      widget.productModel.addedQtyToCart =
          widget.productModel.addedQtyToCart! - 1;
      enableAddToCartLoading.onUpdateData(false);
      KeyedDebounceHelper.instance.start(
        key: productKey,
        value: widget.productModel.addedQtyToCart.toString(),
        milliseconds: AppConstants.instance.debounceTimeInBackGround,
        onSearch: (val) {
          reduceQntFromCart(widget.productModel.addedQtyToCart!);
        },
      );
    }
  }

  @override
  Future<void> reduceQntFromCart(int qnt) async {
    var result = await getIt<ProductsHelper>()
        .reduceProductQntInCart(context, widget.productModel, qnt);
    if (result == true) {
      if (widget.onPressDecrease != null) {
        await widget.onPressDecrease?.call();
      }
    }
  }

  @override
  Future<void> deleteItemFromCart() async {
    enableAddToCartLoading.onUpdateData(true);
    var deleteResult = await getIt<ProductsHelper>()
        .deleteProductInCartFromProductsList(context, widget.productModel);
    if (deleteResult) {
      widget.productModel.addedQtyToCart = 0;
      if (widget.onPressDelete != null) {
        await widget.onPressDelete?.call();
      }
    }
    enableAddToCartLoading.onUpdateData(false);
  }

  @override
  void checkIfItemInCart() {
    final List<GeneralCartItem>? cartProducts =
        getIt<CartHelper>().cartItemsBloc.state.data.items;
    final Set<int>? cartProductsIds =
        cartProducts?.map((e) => e.productId).toSet();
    if (cartProductsIds?.contains(widget.productModel.id) == true) {
      GeneralCartItem? cartProduct = cartProducts?.firstWhere(
          (element) => element.productId == widget.productModel.id);
      widget.productModel.addedQtyToCart = cartProduct?.quantity;
    }
  }

  @override
  void afterAddToCartCallback() {
    widget.productModel.addedQtyToCart =
        (widget.productModel.addedQtyToCart ?? 0) + 1;
    widget.afterAddToCart?.call();
  }
}
