part of 'seller_products_imports.dart';

class SellerProductsController {
  final TextEditingController brandsSearchCtr = TextEditingController();

  final TextEditingController productSearchCtr = TextEditingController();
  final PagingController<int, ProductCard> pagingController =
      PagingController(firstPageKey: 1);
  final PagingController<int, BrandDomainModel> brandsPagingController =
      PagingController(firstPageKey: 1);
  final PagingController<int, ShopCategory> categoriesPagingController =
      PagingController(firstPageKey: 1);
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);
  final GenericBloc<bool> isLoadingNextPage = GenericBloc<bool>(false);
  final GenericBloc<bool> refreshCategories = GenericBloc<bool>(false);
  final GenericBloc<ShopCategory?> categoryCubit =
      GenericBloc<ShopCategory?>(null);
  final GenericBloc<Shop?> shopCubit = GenericBloc<Shop?>(null);

  final GenericBloc<String> priceCubit = GenericBloc<String>("0.0");

  int pageSize = 12;
  bool isFilterAppliedBefore = false;

  SellerProductDomainModel? allSellerData;
  late final int shopId;
  BrandDomainModel? selectedBrand;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GenericBloc<bool> showBrandsCubit = GenericBloc<bool>(false);
  final GenericBloc<String> neededPriceCubit = GenericBloc<String>("");
  final GenericBloc<PriceRangeParams?> rangeCubit = GenericBloc(null);
  final GenericBloc<List<BrandDomainModel>> brandsCubit = GenericBloc([]);

  GenericBloc<CartDomainModel> get cartItemsBloc =>
      getIt<CartHelper>().cartItemsBloc;

  void getCartData() {
    var minShopsRequired = cartItemsBloc.state.data.minAmountSellers;
    var minShopsIds = minShopsRequired?.map((e) => e.shopId).toList();
    if (minShopsIds?.contains(shopId) == true) {
      getIt<CartHelper>().getCartItems(refresh: false);
      getIt<CartHelper>().getCartItems();
    }
  }

  bool cartHaveSellerProduct() {
    var products = cartItemsBloc.state.data.items;
    var productsShopsIds = products?.map((e) => e.shopId).toSet();
    return productsShopsIds?.contains(shopId) ?? false;
  }

  double neededAmount() {
    var minShopsRequired = cartItemsBloc.state.data.minAmountSellers;
    var minShopsIds = minShopsRequired?.map((e) => e.shopId).toList();
    if (minShopsIds?.contains(shopId) == true) {
      return cartItemsBloc.state.data.getSingleSellerReMainAmount(shopId);
    } else {
      return 0.0;
    }
  }

  SellerProductsController(int id) {
    shopId = id;
    getCartData();
    getProducts(1, refresh: false);
    getBrands(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getProducts(pageKey);
    });
    brandsPagingController.addPageRequestListener((pageKey) {
      getBrands(pageKey);
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchShopDetails(fromRemote: false);
      _fetchShopDetails();
      _getCategories();
    });
  }

  Future<void> _fetchShopDetails({bool fromRemote = true}) async {
    var data = await GetShopDetails()
        .call(ShopIdParams(shopId: shopId, refresh: fromRemote));
    if (data != null) {
      shopCubit.onUpdateData(data);
    }
  }

  void _getCategories() {
    getShopCategories(1, refresh: false);
    getShopCategories(1);
    categoriesPagingController.addPageRequestListener((pageKey) {
      getShopCategories(pageKey, refresh: false);
      getShopCategories(pageKey);
    });
  }

  Future<void> getShopCategories(int page, {bool refresh = true}) async {
    ShopCategoryParams params = ShopCategoryParams(
      shopId: shopId,
      paginParams: GenericPaginateParams(
        currentPage: page,
        pageSize: pageSize,
        refresh: refresh,
      ),
    );
    List<ShopCategory> data = await GetShopCategories().call(params);
    final isLastPage = data.length < pageSize;
    if (page == 1) {
      categoriesPagingController.itemList = [];
      refreshCategories.onUpdateData(true);
    }
    if (isLastPage) {
      categoriesPagingController.appendLastPage(data);
    } else {
      categoriesPagingController.appendPage(data, page + 1);
    }
  }

  Future<void> getProducts(int page, {bool refresh = true}) async {
    SellerProductsParams params = _params(page, refresh);
    isLoadingNextPage.onUpdateData(page > 1);
    var result = await GetSellerProducts().call(params);
    isLoadingNextPage.onUpdateData(false);
    allSellerData = result;
    updateRangeValue(result);
    final List<ProductCard> data =
        result?.sectionProductModel.products ?? <ProductCard>[];
    final isLastPage = (data.length) < pageSize;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      pagingController.appendPage(data, nextPageKey);
    }
    final nextPageKey = page + 1;
    var newPrice = 50 - (nextPageKey + 5);
    priceCubit.onUpdateData(newPrice.toString());
  }

  void updateRangeValue(SellerProductDomainModel? data) {
    RangeValues rangeValues = RangeValues(
        double.parse(data?.priceRange.min ?? "0.0"),
        double.parse(data?.priceRange.max ?? "0.0"));
    rangeCubit.onUpdateData(
        PriceRangeParams(initial: rangeValues, value: rangeValues));
  }

  void openDrawerFilter() {
    if (allSellerData != null || pagingController.itemList!.isNotEmpty) {
      scaffoldKey.currentState?.openDrawer();
    }
  }

  void onFavChanged(ProductCard model) {
    model.isWishlist = !model.isWishlist;
    int index = pagingController.itemList!.indexWhere((e) => e.id == model.id);
    pagingController.itemList![index] = model;
    var data = pagingController.itemList;
    pagingController.itemList = [];
    pagingController.itemList = data;
  }

  void showBrandsSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Dimens.dp10),
        ),
      ),
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => AllBrandsSheetWidget(controller: this),
    );
  }

  void onSelectBrand(BrandDomainModel model) {
    var brands = brandsPagingController.itemList;
    if (model.isSelected) {
      model.isSelected = false;
      selectedBrand = null;
    } else {
      for (var item in brands ?? <BrandDomainModel>[]) {
        item.isSelected = false;
      }
      model.isSelected = true;
      selectedBrand = model;
    }
    brandsPagingController.itemList = [...?brands];
    brandsCubit.onUpdateData(brandsCubit.state.data);
  }

  void refreshBrands(BuildContext context, {bool disableFocus = true}) {
    brandsCubit.onUpdateToInitState([]);
    if (disableFocus) {
      FocusScope.of(context).unfocus();
    }
    brandsPagingController.refresh();
    getBrands(1);
  }

  void resetFilter(BuildContext context) {
    final double minPrice = double.parse(allSellerData!.priceRange.min);
    final double maxPrice = double.parse(allSellerData!.priceRange.max);
    RangeValues rangeValues = RangeValues(minPrice, maxPrice);

    selectedBrand = null;
    rangeCubit.onUpdateData(
        PriceRangeParams(initial: rangeValues, value: rangeValues));
    if (isFilterAppliedBefore) {
      pagingController.refresh();
      isFilterAppliedBefore = false;
    }
    brandsSearchCtr.clear();
    Navigator.pop(context);
  }

  void confirmFilter(BuildContext context) {
    isFilterAppliedBefore = true;
    Navigator.of(context).pop();
    pagingController.refresh();
  }

  SellerProductsParams _params(int page, bool refresh) {
    return SellerProductsParams(
        sellerId: shopId,
        paginateParams: _paginateParams(page, refresh),
        brandId: selectedBrand?.id,
        minPrice: rangeCubit.state.data?.value.start,
        maxPrice: rangeCubit.state.data?.value.end,
        keyword: productSearchCtr.text.trim(),
        categoryId: categoryCubit.state.data?.id);
  }

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }

  Future<void> getBrands(int page, {bool refresh = true}) async {
    var params = _brandsParams(pageSize, refresh, page);
    var data = await GetBrands().call(params);
    final isLastPage = data.length < pageSize;
    if (page == 1) {
      if (data.isNotEmpty) {
        brandsCubit.onUpdateData(data.take(11).toList());
      } else {
        brandsCubit.onUpdateData([]);
      }
      brandsPagingController.itemList = [];
    }
    if (isLastPage) {
      brandsPagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      brandsPagingController.appendPage(data, nextPageKey);
    }
  }

  void clearSearchField() {
    productSearchCtr.clear();
    showClearIcon.onUpdateData(false);
    pagingController.refresh();
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
    pagingController.refresh();
    getProducts(1);
  }

  void whileSearch(String value) {
    DebounceHelper.instance.startSearch(
      value: value,
      onSearch: (val) => () {},
    );
  }

  BrandsParams _brandsParams(int paginate, bool refresh, int page) {
    return BrandsParams(
      paginate: paginate,
      refresh: refresh,
      page: page,
      keyword: brandsSearchCtr.text.trim(),
    );
  }

  // SearchProductsParams _productsParams(int page, bool refresh) {
  //   var specifications = specificationsCubit.state.data;
  //   var colors = specifications?.colors
  //       .where((element) => element.selected)
  //       .map((e) => e.code)
  //       .toList();
  //   var attributes = specifications?.attributes.map(
  //         (e) => e.attributeValues
  //         .where((val) => val.selected)
  //         .map((element) => element.value)
  //         .toList(),
  //   );
  //   return SearchProductsParams(
  //     catId: currentCatId,
  //     brandId: brandId,
  //     color: colors,
  //     attributes: attributes?.expand((element) => element).toList(),
  //     minPrice: rangeCubit.state.data?.value.start,
  //     maxPrice: rangeCubit.state.data?.value.end,
  //     refresh: refresh,
  //     pageSize: pageSize,
  //     currentPage: page,
  //   );
  // }

  void onSelectCategory(ShopCategory model) {
    if (categoryCubit.state.data?.id == model.id) {
      categoryCubit.onUpdateData(null);
    } else {
      categoryCubit.onUpdateData(model);
    }
    pagingController.refresh();
    getProducts(1);
  }

  void onPressViewCart(BuildContext context, bool fromCart) {
    if (cartHaveSellerProduct() == false) {
      return;
    }
    if (fromCart == true) {
      AutoRouter.of(context).pop();
    } else {
      AutoRouter.of(context).push(CartRoute());
    }
  }

  void routeToInstoreShopping(BuildContext context) {
    final shop = shopCubit.state.data;
    final sellerId = shop?.userId;
    if (sellerId == null) {
      return;
    }
    final sellerName = shop?.name ?? '';
    final sellerImage = shop?.logo ?? '';
    final hasBranches = false;
    // final hasBranches = shop?.hasBranches ?? false;
    if (InstoreCartHelper.instance.hasItemsFromDifferentSeller(sellerId)) {
      final cart = InstoreCartHelper.instance.getLocalCart();
      showDifferentSellerDialog(
        context,
        cartSellerName: cart?.sellerName ?? '',
        sellerId: sellerId,
        sellerName: sellerName,
        sellerImage: sellerImage,
        hasBranches: hasBranches,
      );
      return;
    }
    AutoRouter.of(context).push(InstoreCartPageRoute(
      sellerId: sellerId,
      sellerName: sellerName,
      sellerImage: sellerImage,
      hasBranches: hasBranches,
    ));
  }

  void showDifferentSellerDialog(
    BuildContext context, {
    required String cartSellerName,
    required int sellerId,
    required String sellerName,
    required String sellerImage,
    required bool hasBranches,
  }) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return BuildDeleteDialog(
          content: tr('instoreCartDifferentSeller')
              .replaceAll('{seller}', cartSellerName),
          onPressConfirm: () {
            Navigator.of(dialogContext).pop();
            InstoreCartHelper.instance.deleteAllItemsFromCart().then((_) {
              if (context.mounted) {
                AutoRouter.of(context).push(InstoreCartPageRoute(
                  sellerId: sellerId,
                  sellerName: sellerName,
                  sellerImage: sellerImage,
                  hasBranches: hasBranches,
                ));
              }
            });
          },
        );
      },
    );
  }


}
