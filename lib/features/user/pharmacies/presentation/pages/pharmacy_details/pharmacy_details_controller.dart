part of 'pharmacy_details_imports.dart';

class PharmacyDetailsController {
  final int? pharmacyId;
  final Shop? pharmacy;

  ShopCategory? selectedCategory;

  final GenericBloc<Shop?> pharmacyBloc = GenericBloc<Shop?>(null);

  final PagingController<int, ShopCategory> categoriesPagingController =
      PagingController(firstPageKey: 1);
  final PagingController<int, Product> productsPagingController =
      PagingController(firstPageKey: 1);

  final TextEditingController productSearchCtr = TextEditingController();

  final GenericBloc<Pharmacy?> pharmacyCubit = GenericBloc<Pharmacy?>(null);
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);
  final GenericBloc<bool> isLoadingNextPage = GenericBloc<bool>(false);
  GenericBloc<CartDomainModel> cartItemsBloc =
      GenericBloc<CartDomainModel>(CartDomainModel());

  PharmacyDetailsController(
      {required this.pharmacyId, required this.pharmacy}) {
    if (pharmacyId != null) {
      getCartItems(refresh: false);
      getCartItems();
      _fetchShopDetails(fromRemote: false);
      _fetchShopDetails();
      _getCategories();
      _getPharmacyProducts();
    } else if (pharmacy != null) {
      getCartItems(refresh: false);
      getCartItems();
      pharmacyBloc.onUpdateData(pharmacy!);
      _getCategories();
      _getPharmacyProducts();
    }
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
    categoriesPagingController.addPageRequestListener((pageKey) {
      getProducts(pageKey);
    });
  }

  Future<void> getShopCategories(int page, {bool refresh = true}) async {
    if (getPharmacyId == null) {
      return;
    }

    ShopCategoryParams params =
        _pharamcyCategoryParams(getPharmacyId!, page, refresh);

    List<ShopCategory> data = await GetShopCategories().call(params);

    if (page == 1) {
      categoriesPagingController.itemList = [];
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

  void onFavChanged(Product model) {}

  void onSelectCategory(ShopCategory model) {
    selectedCategory = model;
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
      var result = await AutoRouter.of(context).push(const PharmacyCartRoute());
      if (result is CartDomainModel) {
        cartItemsBloc.onUpdateData(result);
        productsPagingController.itemList = [
          ...?productsPagingController.itemList
        ];
      } else {
        await getCartItems(refresh: true);
        _syncProductsWithCart();
      }
    }
  }

  void _syncProductsWithCart() {
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
}
