part of 'pharmacy_details_imports.dart';

class PharmacyDetailsController {
   int? pharmacyId;
  final int? selectedCategoryId;
  final String? selectedCategoryName;

  ShopCategory? selectedCategory;

   bool fromCart = false;

  final GenericBloc<Shop?> pharmacyBloc = GenericBloc<Shop?>(null);

  final GenericBloc<bool> refreshCategories = GenericBloc<bool>(false);

  final PagingController<int, ShopCategory> categoriesPagingController =
      PagingController(firstPageKey: 1);
  final PagingController<int, Product> productsPagingController =
      PagingController(firstPageKey: 1);

  final TextEditingController productSearchCtr = TextEditingController();

  final GenericBloc<Pharmacy?> pharmacyCubit = GenericBloc<Pharmacy?>(null);
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);
  final GenericBloc<bool> isLoadingNextPage = GenericBloc<bool>(false);
  final GenericBloc<bool> showAppBarTitle = GenericBloc<bool>(false);
  GenericBloc<CartDomainModel> cartItemsBloc = GenericBloc<CartDomainModel>(CartDomainModel());

  final ScrollController scrollController = ScrollController();

  PharmacyDetailsController(
      {required this.pharmacyId,
      this.fromCart = false,
      this.selectedCategoryId,
      this.selectedCategoryName}) {
    _setupScrollListener();
    _injectSelectedCategoryPlaceholder();
    if (pharmacyId != null) {
      initData();
    }
    // else if (pharmacy != null) {
    //   getCartItems(refresh: false);
    //   getCartItems();
    //   pharmacyBloc.onUpdateData(pharmacy!);
    //   _getCategories();
    //   _getPharmacyProducts();
    // }
  }



  void initData(){
    getCartItems(refresh: false);
    getCartItems();
    _getCategories();
    _getPharmacyProducts();
    _fetchShopDetails(fromRemote: false);
    _fetchShopDetails();
  }


  int? get getPharmacyId => pharmacyBloc.state.data?.id ?? pharmacyId;

  // Future<void> getCartAndProductsData()async{
  //   getCartItems(refresh: false);
  //   getProducts(1, refresh: false);
  //   await getCartItems();
  //   _getPharmacyProducts();
  // }

  void _getCategories() {
    getShopCategories(1, refresh: false);
    categoriesPagingController.addPageRequestListener((pageKey) {
      getShopCategories(pageKey);
    });
  }

  void _getPharmacyProducts() {
    getProducts(1, refresh: false);
    // getProducts(1, refresh: true);
    productsPagingController.addPageRequestListener((pageKey) {
      getProducts(pageKey);
    });
  }

  void _injectSelectedCategoryPlaceholder() {
    if (selectedCategoryId == null || selectedCategoryName == null) return;
    final placeholder = ShopCategory(
      id: selectedCategoryId!,
      name: selectedCategoryName!,
      icon: '',
      slug: '',
      description: '',
      metaTitle: '',
      metaDescription: '',
      isSelect: true,
    );
    selectedCategory = placeholder;
    categoriesPagingController.itemList = [placeholder];
    refreshCategories.onUpdateData(true);
  }

  Future<void> getShopCategories(int page, {bool refresh = true}) async {
    if (getPharmacyId == null) {
      return;
    }

    ShopCategoryParams params =
        _pharamcyCategoryParams(getPharmacyId!, page, refresh);

    List<ShopCategory> data = await GetShopCategories().call(params);

    if (selectedCategoryId != null) {
      data = data.where((e) => e.id != selectedCategoryId).toList();
    }

    if (page == 1) {
      final placeholder = categoriesPagingController.itemList
          ?.where((e) => e.id == selectedCategoryId)
          .toList() ?? [];
      categoriesPagingController.itemList = [...placeholder];
      if (data.isNotEmpty) {
        refreshCategories.onUpdateData(true);
      }
    }

    final isLastPage = data.length < AppConstants.instance.paginationLimit;
    if (isLastPage) {
      categoriesPagingController.appendLastPage(data);
    } else {
      categoriesPagingController.appendPage(data, page + 1);
    }
  }

  Future<void> getProducts(int page, {bool refresh = true}) async {
    if (getPharmacyId == null) {
      return;
    }
    var params = _params(page, refresh);
    isLoadingNextPage.onUpdateData(page > 1);
    var result = await GetSellerProducts().call(params);
    isLoadingNextPage.onUpdateData(false);
    if (pharmacyBloc.state.data == null && result != null) {
      pharmacyBloc.onUpdateData(result.shop);
    }
    final List<Product> data =
        result?.sectionProductModel.products ?? <Product>[];
    final isLastPage = (data.length) < AppConstants.instance.paginationLimit;
    if (page == 1) {
      productsPagingController.itemList = [];
    }
    if (isLastPage) {
      productsPagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      productsPagingController.appendPage(data, nextPageKey);
    }
  }

  ShopCategoryParams _pharamcyCategoryParams(int id, int page, bool refresh) {
    var paginateParams = _categoriesPaginateParams(page, refresh);
    return ShopCategoryParams(
      shopId: id,
      paginParams: paginateParams,
    );
  }

  GenericPaginateParams _categoriesPaginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      pageSize: AppConstants.instance.paginationLimit,
      refresh: refresh,
    );
  }

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      pageSize: AppConstants.instance.paginationLimit,
      refresh: refresh,
    );
  }

  SellerProductsParams _params(int page, bool refresh) {
    return SellerProductsParams(
        sellerId: getPharmacyId!,
        paginateParams: _paginateParams(page, refresh),
        keyword: productSearchCtr.text.trim(),
        categoryId: selectedCategory?.id);
  }

  Future<void> _fetchShopDetails({bool fromRemote = true}) async {
    var data = await GetShopDetails().call(
      ShopIdParams(shopId: pharmacyId!, refresh: fromRemote),
    );
    pharmacyBloc.onUpdateData(data);
  }

  bool cartHaveSellerProduct() {
    var shopId = pharmacyBloc.state.data?.id;
    var products = cartItemsBloc.state.data.items;
    var productsShopsIds = products?.map((e) => e.shopId).toSet();
    return productsShopsIds?.contains(shopId) ?? false;
  }

  double neededAmount() {
    var shopId = pharmacyBloc.state.data?.id;
    if (shopId == null) {
      return 0.0;
    }
    var minShopsRequired = cartItemsBloc.state.data.minAmountSellers;
    var minShopsIds = minShopsRequired?.map((e) => e.shopId).toList();
    if (minShopsIds?.contains(shopId) == true) {
      return cartItemsBloc.state.data.getSingleSellerReMainAmount(shopId);
    } else {
      return 0.0;
    }
  }

  void onFavChanged(Product model) {
  model.isWishlist = !model.isWishlist!;
  int index =
  productsPagingController.itemList!.indexWhere((e) => e.id == model.id);
  if (index != -1) {
    productsPagingController.itemList![index] = model;
    var data = productsPagingController.itemList;
    productsPagingController.itemList = [...?data];
  }
  }

  void onSelectCategory(ShopCategory model) {
    selectedCategory = model;
    if(model.isSelect){
      selectedCategory = null;
    }
    model.isSelect = !model.isSelect;
    categoriesPagingController.itemList = [
      ...?categoriesPagingController.itemList
    ];
    productsPagingController.refresh();
    getProducts(1);
  }

  void onPressSupportedInsurance(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (context) => SupportedInsuranceBottomSheetWidget(
        insurance: pharmacyBloc.state.data?.insuranceCompanies ?? [],
      ),
    );
  }

  Future<bool> deleteProductInCartFromProductsList(
      BuildContext context, Product product) async {
    var cartItem = _getSameProductInCart(product);
    if (cartItem == null) {
      return false;
    }
    getIt<LoadingHelper>().showLoadingDialog();
    final deleted =
        await getIt<CartHelper>().deleteItemFromCart(context, cartItem);
    getIt<LoadingHelper>().dismissDialog();
    if (deleted) {
      var updatedCart = cartItemsBloc.state.data;
      updatedCart.items?.remove(cartItem);
      product.addedQtyToCart = 0;
      cartItemsBloc.onUpdateData(updatedCart);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> reduceProductQntInCart(
      BuildContext context, Product product, int newQnt,
      {GenericBloc<bool>? loadingBloc}) async {
    var cartItem = _getSameProductInCart(product);
    if (cartItem == null) {
      return false;
    }

    if (cartItem.quantity > 1) {
      final success =
          await getIt<CartHelper>().updateCartItem(newQnt, cartItem.id);
      loadingBloc?.onUpdateData(false);
      if (success != null) {
        cartItemsBloc.onUpdateData(success);
        return true;
      } else {
        product.addedQtyToCart = cartItem.quantity;
      }
    }
    return false;
  }

  Future<bool> increaseProductAddedQntInCart(
      BuildContext context, Product product, int qnt) async {
    List<GeneralCartItem>? cartList = cartItemsBloc.state.data.items;
    if (cartList == null || cartList.isEmpty) {
      return false;
    }

    List<GeneralCartItem> cartItems =
        cartList.where((element) => element.productId == product.id).toList();
    if (cartItems.isEmpty) {
      return false;
    }

    GeneralCartItem cartItem = cartItems.first;

    CartDomainModel? success =
        await getIt<CartHelper>().updateCartItem(qnt, cartItem.id);
    if (success != null) {
      FacebookEventsHelper.instance
          .productAddToCart(id: cartItem.productId, price: cartItem.price);
      cartItemsBloc.onUpdateData(success);
      getCartItems();
      return true;
    }
    product.addedQtyToCart = cartItem.quantity;
    return false;
  }

  GeneralCartItem? _getSameProductInCart(Product product) {
    var cartList = cartItemsBloc.state.data.items;
    if (cartList == null || cartList.isEmpty) {
      return null;
    }

    var cartItems =
        cartList.where((element) => element.productId == product.id);
    if (cartItems.isEmpty) {
      return null;
    }

    var cartItem = cartItems.first;
    return cartItem;
  }

  Future<void> getCartItems({bool refresh = true}) async {
    String? token = await getIt<GetDeviceId>().deviceId;
    var params = _cartParams(refresh, token!);
    var data = await GetCart().call(params);
    var pharmacyProducts = data.items?.where((element) => element.shopId == getPharmacyId).toList();
    data.calculableTotal = pharmacyProducts?.fold<double>(0, (sum, item)=> sum + item.calculableTotal);
    cartItemsBloc.onUpdateData(data);
  }

  CartParams _cartParams(bool refresh, String token) {
    return CartParams(
      macAddress: token,
      refresh: refresh,
      type: CartTypeEnum.pharmacy,
    );
  }

  void clearSearchField() {
    productSearchCtr.clear();
    showClearIcon.onUpdateData(false);
    productsPagingController.refresh();
    getProducts(1);
  }

  void whileWriting(BuildContext context, String value) {
    DebounceHelper.instance.startSearch(
        value: value,
        onSearch: (val) {
          FocusManager.instance.primaryFocus?.unfocus();
          searchProducts(context, enableUnFocus: false);
        });
    if (value.isNotEmpty) {
      showClearIcon.onUpdateData(true);
    } else {
      showClearIcon.onUpdateData(false);
    }
  }

  void searchProducts(BuildContext context, {bool enableUnFocus = true}) {
    if (enableUnFocus) {
      FocusScope.of(context).unfocus();
    }
    productsPagingController.refresh();
    getProducts(1);
  }

  Future<void> onPressViewCart(BuildContext context) async {
    if (neededAmount() == 0) {
      if(fromCart){
        AutoRouter.of(context).pop(true);
      }else{
        var result = await AutoRouter.of(context).push( PharmacyCartRoute(pharmacyId: pharmacyBloc.state.data!.id!));
        refreshDataAfterRoute(result);
      }
    }
  }



  Future<void> refreshDataAfterRoute(Object? result)async{
    if (result is CartDomainModel) {
      cartItemsBloc.onUpdateData(result);
      productsPagingController.itemList = [
        ...?productsPagingController.itemList
      ];
      syncProductsWithCart();
    } else {
      await getCartItems(refresh: true);
      syncProductsWithCart();
    }
  }


  void syncProductsWithCart() {
    final List<Product>? currentList = productsPagingController.itemList;
    if (currentList == null || currentList.isEmpty) return;

    final cartItems = cartItemsBloc.state.data.items ?? <GeneralCartItem>[];

    final updatedList = currentList.map((product) {
      final matchingCartItems = cartItems.where(
        (item) => item.productId == product.id,
      );
      product.addedQtyToCart = matchingCartItems.isNotEmpty
          ? matchingCartItems.fold<int>(0, (sum, item) => sum + item.quantity)
          : 0;
      return product;
    }).toList();

    productsPagingController.itemList = [...updatedList];
  }

  void showAddToCartFailedDialog(BuildContext pageContext) {
    final firstItem = cartItemsBloc.state.data.items?.first;
    final pharmacyName = firstItem?.soldBy ?? "";
    final shopId = firstItem?.shopId;

    showDialog(
      context: pageContext,
      builder: (dialogContext) => PharmacyAddToCartFailedDialog(
        pharmacyName: pharmacyName,
        onClearCart: () => clearCart(dialogContext),
        onGoToPharmacy: () {
          Navigator.pop(dialogContext);
          if (shopId != null) {
            AutoRouter.of(pageContext).push(PharmacyDetailsRoute(pharmacyId: shopId));
          }
        },
      ),
    );
  }

  void _setupScrollListener() {
    scrollController.addListener(
      () {
        final isScrollingDown = scrollController.position.pixels > 250;
        showAppBarTitle.onUpdateData(isScrollingDown);
      },
    );
  }


   Future<void> clearCart(BuildContext context) async {
     final token = await getIt<GetDeviceId>().deviceId;
     final params =
     ClearCartParams(macAddress: token ?? "", type: CartTypeEnum.pharmacy);
     await ClearCart().call(params).then((value) async {
       CustomToast.showSimpleToast(
           msg: "Your cart has been cleared successfully.",
           type: ToastType.success);
       cartItemsBloc.state.data.pharmacyItems?.clear();
       cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
       Navigator.pop(context);
     });
   }



}
