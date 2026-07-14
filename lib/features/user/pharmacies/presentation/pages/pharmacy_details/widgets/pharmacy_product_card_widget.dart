part of 'widgets_imports.dart';

class PharmacyProductCardWidget extends BaseProductItem {
  final PharmacyDetailsController controller;
  final bool fromPharmPage;
  const PharmacyProductCardWidget({
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
    required this.controller,
     this.fromPharmPage = false,
  });

  @override
  State<PharmacyProductCardWidget> createState() =>
      _PharmacyProductCardWidgetState();
}

class _PharmacyProductCardWidgetState
    extends BaseProductItemState<PharmacyProductCardWidget> {
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
  Future<bool> handleFirstAddToCart(BuildContext context) async {
    final product = widget.productModel;
    if (product is! PharmacyProduct) {
      return super.handleFirstAddToCart(context);
    }

    if ((product.addedQtyToCart ?? 0) > 0) {
      return false;
    }

    enableAddToCartLoading.onUpdateData(true);

    try {
      return await getIt<ProductsHelper>().addPharmacyProductToCart(
            context,
            product,
           widget.controller.selectedBranchCubit.state.data?.id,
            afterAddToCart: afterAddToCartCallback,
          ) ??
          false;
    } finally {
      enableAddToCartLoading.onUpdateData(false);
    }
  }

  @override
  Future<void> routeToDetails(BuildContext context) async {
    final product = widget.productModel;
   var result =  await AutoRouter.of(context).push(
      ProductDetailsRoute(
        isFav: product.isWishlist!,
        productId: product.id!,
        isResale: product.isResale!,
        fromSellerPage: widget.fromPharmPage,
        branchId: product is PharmacyProduct ? product.branch?.id : null,
      ),
    );
     widget.controller.refreshDataAfterRoute(result);
    widget.onRefresh?.call();
  }

  @override
  Future<void> addToCart(BuildContext context) async {
    if (handleOutOfStockGuard()) return;
    final isFirstAdd = widget.productModel.addedQtyToCart == null ||
        widget.productModel.addedQtyToCart == 0;
    final addedToCart = await handleFirstAddToCart(context);
    if (addedToCart) return;
    if (isFirstAdd) {
      if (!mounted) return;
      widget.controller.showAddToCartFailedDialog(this.context);
      return;
    }
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
        onSearch: (val) => widget.controller
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
    var result = await widget.controller
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
    var deleteResult = await widget.controller
        .deleteProductInCartFromProductsList(context, widget.productModel);
    if (deleteResult) {
      widget.productModel.addedQtyToCart = 0;
      if (widget.onPressDelete != null) {
        await widget.onPressDelete?.call();
      }
    }
    widget.controller.refreshDataAfterRoute(false);
    enableAddToCartLoading.onUpdateData(false);
  }

  @override
  void checkIfItemInCart() {
    final List<GeneralCartItem>? cartProducts =
        widget.controller.cartItemsBloc.state.data.items;
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
        widget.productModel.addedQtyToCart! + 1;
    widget.afterAddToCart?.call();
  }
}
