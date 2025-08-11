// ignore_for_file: use_build_context_synchronously
part of 'product_details_imports.dart';

class ProductDetailsController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController queryController = TextEditingController();
  final GenericBloc<int> qtyCubit = GenericBloc(0);
  final GenericBloc<int> isSelected = GenericBloc(0);
  final GenericBloc<int> selectedColorCubit = GenericBloc(0);
  final GenericBloc<ProductDetailsDomainModel?> detailsCubit = GenericBloc(null);
  final GenericBloc<CartDomainModel> cartItemsBloc = GenericBloc(CartDomainModel());
  late bool isResale;
  late int productId;
  List<String> selectedVariants = [];
  List<String> basicImage = [];


  ProductDetailsController(BuildContext context, int id, bool productResale) {
    getProductDetails(context, id, refresh: false);
    getProductDetails(context, id);
    isResale = productResale;
    productId = id;
    getCartItems(refresh: false);
    getCartItems();
  }


  /// resetQty set false when change favorite and item already have qty more than 1
  Future<void> getProductDetails(BuildContext context, int productId,
      {bool refresh = true, bool resetQty = true}) async {
    var params = _detailsParams(refresh, productId);
    var result = await GetProductDetails().call(params);
    detailsCubit.onUpdateData(result);
    basicImage = detailsCubit.state.data!.product.images!;
    if(resetQty){
      if((result?.product.variant?.currentStock ?? 0) >0 ){
        qtyCubit.onUpdateData(1);
      }
    }
  if(resetQty){
    _initVariants(context);
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
  }

  void onSelectAttributes(BuildContext context, List<ProductOptions> model,
      int index, int position) async {
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

  void increaseQty() {
    var variantPrice = detailsCubit.state.data?.product.variant;
    var price = double.parse(variantPrice!.calculablePrice!);
    price = price / qtyCubit.state.data;
    if (variantPrice.currentStock! >= 1) {
      if (variantPrice.currentStock! > qtyCubit.state.data) {
        var newQty = qtyCubit.state.data + 1;
        var priceQty = newQty * price;
        variantPrice.calculablePrice = priceQty.toStringAsFixed(2);
        qtyCubit.onUpdateData(newQty);
        detailsCubit.onUpdateData(detailsCubit.state.data);
      } else {
        CustomToast.showSimpleToast(
            msg:
                "${tr('only')} ${variantPrice.currentStock} available in stock");
        return;
      }
    }else{
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
    }
  }

  void onChangeFav(BuildContext context,Product item) {
    item.isWishlist = !item.isWishlist!;
    getProductDetails(context, productId,resetQty: false);
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

  void onBuyProduct(BuildContext context) {
    getIt<CartHelper>().addProductToCart(
      context,
      qtyCubit.state.data,
      detailsCubit.state.data?.product.variant?.id,
      onAddCartFunc: () => AutoRouter.of(context).push(
        const CartRoute(),
      ),
    );
  }

  void onAddToCart(BuildContext context) {
    getIt<CartHelper>().addProductToCart(
      context,
      qtyCubit.state.data,
      detailsCubit.state.data?.product.variant?.id,
      // onAddCartFunc: () => showCartSuccessDialog(context),
      onAddCartFunc: () => showCartSuccessSheet(context),
    );
  }


  Future<void> getCartItems({bool refresh = true}) async {
    CartDomainModel result = await getIt<CartHelper>().getCartItems(refresh: refresh);
    cartItemsBloc.onUpdateData(result);
  }


  void showCartSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const BuildCartSuccessDialog(),
    );
  }



  Future<void> onIncreaseCart(BuildContext context,CartItem cartItem, GenericBloc<bool> loadingCubit) async {
    if (cartItem.quantity < cartItem.stockQty) {
      loadingCubit.onUpdateData(true);
      final newQty = cartItem.quantity + 1;
      final success = await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
      if (success) {
        loadingCubit.onUpdateData(false);
        cartItem.quantity = newQty;
        cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
        if(cartItem.productId == detailsCubit.state.data?.product.id){
          // detailsCubit.state.data.product.variant.
          // await getProductDetails(context, productId);
          // increaseQty();
        }
      }
       getCartItems();
    } else {
      CustomToast.showSimpleToast(
        msg: '${tr("only")} ${cartItem.stockQty} ${tr("availableStock")}',
      );
    }
  }

  Future<void> onDecreaseCart(BuildContext context,CartItem cartItem, GenericBloc<bool> loadingCubit) async {
    if (cartItem.quantity > 1) {
      loadingCubit.onUpdateData(true);
      final newQty = cartItem.quantity - 1;
      final success = await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
      if (success) {
        loadingCubit.onUpdateData(false);
        cartItem.quantity = newQty;
        cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
        if(cartItem.productId == detailsCubit.state.data?.product.id){
          // decreaseQty();
        }
        getCartItems(refresh: true);
      }
    }
  }


  Future<void> deleteItemFromCart(BuildContext context,CartItem cartItem) async {
    var data = await getIt<CartHelper>().deleteItemFromCart(context,cartItem);
    if (data) {
      var newSubTotal =
          cartItemsBloc.state.data.calculableTotal! - cartItem.calculableTotal;
      cartItemsBloc.state.data.calculableTotal = newSubTotal;
      cartItemsBloc.state.data.items!.remove(cartItem);
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
      var countCubit = context.read<CountCubit>().state;
      var cartCount = countCubit.cartCount - 1;
      context.read<CountCubit>().onUpdateCount(cartCount, countCubit.discount);
      CustomToast.showSimpleToast(
          msg: tr('itemDeleted'), type: ToastType.success);
      getCartItems();
    }
  }


  void showCartSuccessSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) =>  CartSuccessSheetWidget(controller: this),
  );
  }

  void updateFavFromSheet(CartItem cartItem){
    if(cartItem.productId == detailsCubit.state.data?.product.id){
      print("==================inside if===================");
      detailsCubit.state.data!.product.isWishlist = cartItem.isWishlist;
      detailsCubit.onUpdateData(detailsCubit.state.data);
    }
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
}
