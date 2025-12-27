// ignore_for_file: use_build_context_synchronously
part of 'product_details_imports.dart';

class ProductDetailsController implements CartSheetController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController queryController = TextEditingController();
  final GenericBloc<int> qtyCubit = GenericBloc(0);
  final GenericBloc<int> isSelected = GenericBloc(0);
  final GenericBloc<int> selectedColorCubit = GenericBloc(0);
  final GenericBloc<bool> showAppBarTitleCubit = GenericBloc(false);
  final GenericBloc<ProductDetailsDomainModel?> detailsCubit =
      GenericBloc(null);
  final GenericBloc<String> remainingAmountBloc = GenericBloc("0.0");
  @override
  GenericBloc<CartDomainModel> get cartItemsBloc =>
      getIt<CartHelper>().cartItemsBloc;
  final ScrollController scrollController = ScrollController();
  late bool isResale;
  late bool isFav;

  // late bool isFav;
  @override
  late int productId;
  List<String> selectedVariants = [];
  List<String> basicImage = [];

  ProductDetailsController(
      BuildContext context, this.productId, this.isResale, this.isFav) {
    getProductDetails(context, productId, refresh: false);
    getProductDetails(context, productId);
    // getCartItems(refresh: false);
    // getCartItems();
    onScroll();
  }

  void onScroll() {
    scrollController.addListener(
      () {
        final isScrollingDown = scrollController.position.pixels > 250;
        showAppBarTitleCubit.onUpdateData(isScrollingDown);
      },
    );
  }

  /// resetQty set false when change favorite and item already have qty more than 1
  Future<void> getProductDetails(BuildContext context, int productId,
      {bool refresh = true, bool resetQty = true}) async {
    var params = _detailsParams(refresh, productId);
    var result = await GetProductDetails().call(params);
    if (result != null) {
      !refresh ? result.product.isWishlist = isFav : null;
      detailsCubit.onUpdateData(result);
      basicImage = detailsCubit.state.data!.product.images!;
      if (resetQty) {
        if ((result.product.variant?.currentStock ?? 0) > 0) {
          qtyCubit.onUpdateData(1);
          if (!refresh) {
            increaseQty(isInit: !refresh);
          }
        }
      }
      checkIfItemInCart();
      _calculateRemainingAmount();
      if (resetQty) {
        _initVariants(context);
      }
    }
  }

  void _initVariants(BuildContext context) {
    detailsCubit.state.data?.product.choiceOptions?.map((e) {
      if (e.options != null && e.options!.isNotEmpty) {
        e.selectedAttribute!.add(e.options!.first);
        e.hasValue = true;
      } else {
        e.hasValue = false;
      }
    }).toList();
    var selectedList = detailsCubit.state.data!.product.choiceOptions!
        .map((e) => e.selectedAttribute)
        .toList();
    selectedVariants = selectedList.expand((element) => element!).toList();
    if (selectedVariants.isNotEmpty) getVariantPrice(context);
  }

  void getVariantPrice(BuildContext context) async {
    var params = _variantPriceParams();
    var details = detailsCubit.state.data;
    var result = await GetVariantPrice().call(params);
    if (result != null) {
      if (result.variant!.image != "") {
        details?.product.images = [result.variant!.image!, ...basicImage];
      } else {
        details?.product.images = basicImage;
      }
      details?.product.variant = result.variant;
      detailsCubit.onUpdateData(details);
    }
    getIt<LoadingHelper>().dismissDialog();
  }

  void onSelectAttributes(BuildContext context, List<ProductOptions> model,
      int index, int position) async {
    getIt<LoadingHelper>().showLoadingDialog();
    List<String> selected = [];
    var optionItem = model[index];
    var attributes = optionItem.selectedAttribute;
    if (optionItem.hasValue == true) {
      attributes!.clear();
      attributes.add(optionItem.options![position]);
    } else {
      attributes!.add(optionItem.options![position]);
    }
    optionItem.hasValue = true;
    model.where((element) => element.hasValue == true).map((e) {
      selected = [...selected, ...e.selectedAttribute!];
      selectedVariants = selected;
      return e;
    }).toList();
    qtyCubit.onUpdateData(1);
    detailsCubit.onUpdateData(detailsCubit.state.data);
    getVariantPrice(context);
  }

  void sendQuery(BuildContext context) async {
    var params = _sendQueryParams();
    if (formKey.currentState!.validate()) {
      var result = await SendQuery().call(params);
      if (result != null) {
        queryController.clear();
        detailsCubit.state.data?.productQueries.ownProductQueries.add(result);
        detailsCubit.onUpdateData(detailsCubit.state.data);
      }
    }
  }

  void onChangeFollowing(BuildContext context, int shopId) async {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    } else {
      getIt<LoadingHelper>().showLoadingDialog();
      var result = await SetToggleFollowing().call(shopId);
      detailsCubit.state.data?.product.shop?.follow = result;
      detailsCubit.onUpdateData(detailsCubit.state.data);
      getIt<LoadingHelper>().dismissDialog();
      if (result) {
        CustomToast.showSimpleToast(
          msg: tr('itemAddedToFollowing'),
          type: ToastType.success,
        );
      } else {
        CustomToast.showSimpleToast(
          msg: tr('itemRemovedFromFollowing'),
          type: ToastType.success,
        );
      }
    }
  }

  void increaseQty({bool isInit = false}) {
    var variantPrice = detailsCubit.state.data?.product.variant;
    var price = double.parse(variantPrice!.calculablePrice!);
    price = price / qtyCubit.state.data;
    if (variantPrice.currentStock! >= 1) {
      if (variantPrice.currentStock! > qtyCubit.state.data) {
        var newQty = qtyCubit.state.data + (isInit ? 0 : 1);
        var priceQty = newQty * price;
        variantPrice.calculablePrice = priceQty.toStringAsFixed(2);
        qtyCubit.onUpdateData(newQty);
        detailsCubit.onUpdateData(detailsCubit.state.data);
        _calculateRemainingAmount();
      } else {
        CustomToast.showSimpleToast(
            msg:
                "${tr('only')} ${variantPrice.currentStock} available in stock");
        return;
      }
    } else {
      CustomToast.showSimpleToast(msg: tr('outOfStock'));
    }
  }

  void decreaseQty() {
    var variantPrice = detailsCubit.state.data?.product.variant;
    var price = double.parse(variantPrice!.calculablePrice!);
    if (qtyCubit.state.data > 1) {
      var priceQty = price - (price / qtyCubit.state.data);
      var newQty = qtyCubit.state.data - 1;
      variantPrice.calculablePrice = priceQty.toStringAsFixed(2);
      qtyCubit.onUpdateData(newQty);
      detailsCubit.onUpdateData(detailsCubit.state.data);
      _calculateRemainingAmount();
    }
    // if(qtyCubit.state.data == 1){
    //   var price = double.parse(variantPrice.calculablePrice!);
    //   var cartSubTotal = double.parse(cartItemsBloc.state.data.subTotal ?? "0.0");
    //   cartItemsBloc.state.data.subTotal = (cartSubTotal -price).toStringAsFixed(2);
    // }
  }

  void onChangeFav(BuildContext context, Product item) {
    item.isWishlist = !item.isWishlist!;
    getProductDetails(context, productId, resetQty: false);
    // detailsCubit.onUpdateData(detailsCubit.state.data);
  }

  void onChangeCompare(Product item) {
    item.isAddedTCompare = !item.isAddedTCompare!;
    detailsCubit.onUpdateData(detailsCubit.state.data);
  }

  void addToCompare(BuildContext context, Product product) {
    getIt<ProductsHelper>().addProductToCompare(
      context: context,
      product: product,
    );
    onChangeCompare(product);
  }

  void checkIfItemInCart() {
    var cartProducts = getIt<CartHelper>().cartItemsBloc.state.data.items;
    var cartProductsIds = cartProducts?.map((e) => e.productId).toList();
    var product = detailsCubit.state.data!.product;
    if (cartProductsIds?.contains(product.id) == true) {
      var cartProduct = cartProducts
          ?.firstWhere((element) => element.productId == product.id);
      product.addedQtyToCart = cartProduct?.quantity;
      qtyCubit.onUpdateData(cartProduct?.quantity ?? 1);
    }
  }

  void updateTheSameItemInTopAndRelated(CartItem cartItem) {
    List<Product> topSelling = detailsCubit.state.data!.topProducts;
    List<Product> relatedProducts = detailsCubit.state.data!.relatedProducts;
    List<int> topIds = topSelling.map((e) => e.id!).toList();
    List<int> relatedIds = relatedProducts.map((e) => e.id!).toList();
    _updateInProductsList(relatedIds, cartItem, relatedProducts);
    _updateInProductsList(topIds, cartItem, topSelling);
  }

  void _updateInProductsList(
      List<int> topIds, CartItem cartItem, List<Product> relatedProducts) {
    if (topIds.contains(cartItem.productId)) {
      var productInTopSelling = relatedProducts
          .firstWhere((element) => element.id == cartItem.productId);
      productInTopSelling.addedQtyToCart = 0;
      detailsCubit.onUpdateData(detailsCubit.state.data);
    }
  }

  void updateTheSameProduct(CartItem cartItem, {bool isDelete = false}) {
    if (cartItem.productId == productId) {
      qtyCubit.onUpdateData(isDelete ? 1 : cartItem.quantity);
    }
  }

  void onAddToCart(BuildContext context) {
    getIt<CartHelper>().addProductToCart(context, qtyCubit.state.data,
        detailsCubit.state.data?.product.variant?.id,
        // onAddCartFunc: () => showCartSuccessDialog(context),
        onAddCartFunc: () => showCartSuccessSheet(context),
        callCartData: false);
  }

  @override
  Future<void> getCartItems({bool refresh = true}) async {
    await getIt<CartHelper>().getCartItems(refresh: refresh).then((value) {
      if (value.items!.isNotEmpty) {
        _updateCartCountFromCart(value);
      } else {
        _updateCartCountFromCart(CartDomainModel(items: []));
      }
      _calculateRemainingAmount();
    });
  }

  void showCartSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const BuildCartSuccessDialog(),
    );
  }

  @override
  Future<void> onIncreaseCart(BuildContext context, CartItem cartItem,
      GenericBloc<bool> loadingCubit) async {
    if (cartItem.quantity < cartItem.stockQty) {
      loadingCubit.onUpdateData(true);
      final newQty = cartItem.quantity + 1;
      final success =
          await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
      if (success != null) {
        loadingCubit.onUpdateData(false);
        cartItem.quantity = newQty;
        cartItemsBloc.onUpdateData(success);
        _updateCartCountFromCart(success);
        updateTheSameProduct(cartItem);
      }
      // getCartItems();
    } else {
      CustomToast.showSimpleToast(
        msg: '${tr("only")} ${cartItem.stockQty} ${tr("availableStock")}',
      );
    }
  }

  @override
  Future<void> onDecreaseCart(BuildContext context, CartItem cartItem,
      GenericBloc<bool> loadingCubit) async {
    if (cartItem.quantity > 1) {
      loadingCubit.onUpdateData(true);
      final newQty = cartItem.quantity - 1;
      final success =
          await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
      if (success != null) {
        loadingCubit.onUpdateData(false);
        cartItem.quantity = newQty;
        cartItemsBloc.onUpdateData(success);
        _updateCartCountFromCart(success);
        updateTheSameProduct(cartItem);
        getCartItems(refresh: true);
      }
    }
  }

  @override
  Future<void> deleteItemFromCart(
      BuildContext context, CartItem cartItem) async {
    getIt<LoadingHelper>().showLoadingDialog();
    var data = await getIt<CartHelper>().deleteItemFromCart(context, cartItem);
    if (data) {
      getIt<LoadingHelper>().dismissDialog();
      var newSubTotal =
          cartItemsBloc.state.data.calculableTotal! - cartItem.calculableTotal;
      cartItemsBloc.state.data.calculableTotal = newSubTotal;
      updateTheSameItemInTopAndRelated(cartItem);
      updateTheSameProduct(cartItem, isDelete: true);
      cartItemsBloc.state.data.items!.remove(cartItem);
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
      _updateCartCountFromCart(cartItemsBloc.state.data);
      CustomToast.showSimpleToast(
          msg: tr('itemDeleted'), type: ToastType.success);
      if ((cartItemsBloc.state.data.items ?? <CartItem>[]).isEmpty) {
        Navigator.pop(context);
      }
      getCartItems();
    } else {
      getIt<LoadingHelper>().dismissDialog();
    }
  }

  void showCartSuccessSheet(BuildContext context) {
    getIt<CartHelper>().showCartSuccessSheet(context, controller: this);
  }

  @override
  Future<void> refreshProductDetails(BuildContext context) async {
    await getProductDetails(context, productId, resetQty: false);
  }

  Future<bool> onPop(BuildContext context) async {
    AutoRouter.of(context).pop();
    return true;
  }

  @override
  void updateFavFromSheet(CartItem cartItem) {
    if (cartItem.productId == detailsCubit.state.data?.product.id) {
      detailsCubit.state.data!.product.isWishlist = cartItem.isWishlist;
      detailsCubit.onUpdateData(detailsCubit.state.data);
    }
  }

  void _updateCartCountFromCart(CartDomainModel cart) {
    final ctx = getIt<GlobalContext>().context();
    getIt<CartHelper>().updateCartCountWithCart(ctx, cart);
  }

  GenericParams _detailsParams(bool refresh, int productId) {
    return GenericParams(refresh: refresh, id: productId);
  }

  SendQueryParams _sendQueryParams() {
    return SendQueryParams(
      id: detailsCubit.state.data!.product.id!,
      question: queryController.text,
    );
  }

  VariantPriceParams _variantPriceParams() {
    var resellerId = detailsCubit.state.data!.product.sellerId;
    return VariantPriceParams(
      id: detailsCubit.state.data!.product.id!,
      resellerId: isResale ? resellerId : 0,
      variants: selectedVariants.join(','),
    );
  }

  void _calculateRemainingAmount() {
    double cartSubTotal =
        double.parse(cartItemsBloc.state.data.subTotal ?? "0.0");
    double minAmount = cartItemsBloc.state.data.minimumAmount ?? 0.0;

    double currentItemPriceInCart = 0.0;
    var cartProducts = cartItemsBloc.state.data.items ?? [];
    var currentProductId = detailsCubit.state.data?.product.id;

    try {
      var existingItem = cartProducts.firstWhere(
        (element) => element.productId == currentProductId,
      );
      currentItemPriceInCart = existingItem.calculableTotal.toDouble();
    } catch (e) {
      currentItemPriceInCart = 0.0;
    }

    double currentLocalPrice = double.parse(
        detailsCubit.state.data?.product.variant?.calculablePrice ?? "0.0");

    double effectiveTotal =
        (cartSubTotal - currentItemPriceInCart) + currentLocalPrice;
    double remain = minAmount - effectiveTotal;

    remainingAmountBloc.onUpdateData(remain.toStringAsFixed(2));
  }

  @override
  String get minAmountRemain => remainingAmountBloc.state.data;
}
