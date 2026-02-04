// ignore_for_file: use_build_context_synchronously

part of 'category_details_imports.dart';

class CategoryDetailsController implements CartSheetController {
  final TextEditingController searchFieldCtr = TextEditingController();
  final TextEditingController brandsSearchCtr = TextEditingController();
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  final GenericBloc<List<SubCategoryLevel>> subCategoriesCubit = GenericBloc([]);
  final GenericBloc<SubCategory?> specificationsCubit = GenericBloc(null);
  final GenericBloc<List<BrandDomainModel>> brandsCubit = GenericBloc([]);

  final GenericBloc<List<Shop>> sellersCubit = GenericBloc([]);
  final PagingController<int, Shop> pagingSellersController = PagingController(firstPageKey: 1);
  final TextEditingController searchSellersController = TextEditingController();
  final GenericBloc<bool> showSellersCubit = GenericBloc<bool>(false);

  final GenericBloc<PriceRangeParams?> rangeCubit = GenericBloc(null);
  final GenericBloc<String> titleCubit = GenericBloc("");
  final GenericBloc<bool> showBrandsCubit = GenericBloc<bool>(false);
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);
  final PagingController<int, Product> pagingController = PagingController(firstPageKey: 1);
  final PagingController<int, BrandDomainModel> brandsPagingController = PagingController(firstPageKey: 1);

  int brandsPageSize = 12;
  int pageSize = 12;
  int currentPageKey = 1;

  BrandDomainModel? brandModel;
  Shop? selectedSeller;
  Category? initialCategoryModel;

  List<BrandDomainModel> brands = [];
  List<String> selectedColors = [];
  int currentCatId = 0;

  bool isFilterAppliedBefore = false;

  RangeValues? rangeValues;


  CategoryDetailsController(BuildContext context, Category categoryModel) {
    FacebookEventsHelper.instance.categoryDetailsOpened(categoryModel);
    getCartItems();
    initialCategoryModel = categoryModel;
    titleCubit.onUpdateData(categoryModel.name);
    getData(context, categoryModel);
    getBestSellers(1, refresh: false);
    pagingSellersController.addPageRequestListener((pageKey) {
      getBestSellers(pageKey);
    });
  }







  Future<void> getBestSellers(int page, {bool refresh = true}) async {
    var params = searchParams(refresh, page);
    var data = await GetBestSellers().call(params);
    final isLastPage = data.length < pageSize;
    if (page == 1) {
      if (data.isNotEmpty) {
        sellersCubit.onUpdateData(data.take(11).toList());
      } else {
        sellersCubit.onUpdateData([]);
      }
      pagingSellersController.itemList = [];
    }
    if (isLastPage) {
      pagingSellersController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      pagingSellersController.appendPage(data, nextPageKey);
    }

  }

  GenericPaginateParams params(bool refresh, int page) => GenericPaginateParams(
        currentPage: page,
        refresh: refresh,
        pageSize: pageSize,
      );

  SearchResultParams searchParams(bool refresh, int page) {
    return SearchResultParams(searchTxt: searchSellersController.text, paginateParams: params(refresh, page));
  }

  void clearSearchFieldSeller() {
    searchSellersController.clear();
    showClearIcon.onUpdateData(false);
    getBestSellers(1);
  }

  void whileWritingSellers(String value) {
    showClearIcon.onUpdateData(value.isNotEmpty);
    DebounceHelper.instance.startSearch(
        value: value,
        onSearch: (val) {
      sellersCubit.onUpdateToInitState([]);
          getBestSellers(1);
        });
  }



  void refreshSellers(BuildContext context) {
    FocusScope.of(context).unfocus();
    callSellersSearch();
  }

  void callSellersSearch() {
    sellersCubit.onUpdateToInitState([]);
    pagingSellersController.refresh();
    getBestSellers(1);
  }


  void onChangeSellers(Shop? model) {
    if (model == null) return;
    var sellers = pagingSellersController.itemList;
    if (sellers == null) return;
    if (model.isSelect) {
      model.isSelect = false;
      selectedSeller = null;
    } else {
      for (final seller in sellers) {
        seller.isSelect = false;
      }
      model.isSelect = true;
      selectedSeller = model;
    }
    pagingSellersController.itemList = [...sellers];
    sellersCubit.onUpdateData(sellersCubit.state.data);
  }

  Future<void> getData(BuildContext context, Category categoryModel) async {
    await getSubCategories(context, categoryModel.id);
    getPopularProducts(1, refresh: false);
    getBrands(1,refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getPopularProducts(pageKey, refresh: true);
    });
    brandsPagingController.addPageRequestListener(
      (pageKey) {
        getBrands(pageKey);
      },
    );
  }

  Future<void> getSubCategories(BuildContext context, int id, {bool refresh = true, bool appendLevel = false}) async {
    final previousCatId = currentCatId;
    currentCatId = id;
    var params = productsParams(1, refresh);

    var result = await GetSubCategories().call(params);

    if (result != null) {
      final newLevel = SubCategoryLevel(
        subCategory: result,
        selectedCategoryId: id,
      );

      if (appendLevel) {
        if (result.subCats.isNotEmpty) {
          final currentLevels = List<SubCategoryLevel>.from(subCategoriesCubit.state.data);
          currentLevels.add(newLevel);
          subCategoriesCubit.onUpdateData(currentLevels);
          currentCatId = id;
        } else {
          final currentLevels = List<SubCategoryLevel>.from(subCategoriesCubit.state.data);
          if (currentLevels.isNotEmpty) {
            currentLevels.last.selectedCategoryId = id;
            subCategoriesCubit.onUpdateData(currentLevels);
          }
          currentCatId = id;
        }
      } else {
        subCategoriesCubit.onUpdateData([newLevel]);
        currentCatId = id;
      }

      rangeValues = RangeValues(
        double.parse(result.priceRange.min),
        double.parse(result.priceRange.max),
      );
      rangeCubit.onUpdateData(PriceRangeParams(initial: rangeValues!, value: rangeValues!));
      specificationsCubit.onUpdateData(result);
    } else {
      // Restore previous catId if API call failed
      currentCatId = previousCatId;
    }
  }

  Future<void> onSubCatSelect(BuildContext context, Category selectedCat, int levelIndex) async {
    final currentLevels = List<SubCategoryLevel>.from(subCategoriesCubit.state.data);
    if (levelIndex < currentLevels.length && currentLevels[levelIndex].selectedCategoryId == selectedCat.id) {
      onSubCatUnselect(context, levelIndex);
      return;
    }

    // Normal selection logic
    // If selecting from a previous level, remove all levels after that level
    if (levelIndex < currentLevels.length - 1) {
      currentLevels.removeRange(levelIndex + 1, currentLevels.length);
      subCategoriesCubit.onUpdateData(currentLevels);
    }

    titleCubit.onUpdateData(selectedCat.name);

    // Update the selected category ID for the current level
    if (levelIndex < currentLevels.length) {
      currentLevels[levelIndex].selectedCategoryId = selectedCat.id;
      subCategoriesCubit.onUpdateData(currentLevels);
    }

    // Update current category ID
    currentCatId = selectedCat.id;

    // Fetch subcategories for the selected category
    getSubCategories(context, selectedCat.id, appendLevel: true);
    refreshBrands(context);
    pagingController.refresh();
  }

  Future<void> onSubCatUnselect(BuildContext context, int levelIndex) async {
    final currentLevels = List<SubCategoryLevel>.from(subCategoriesCubit.state.data);

    if (levelIndex == 0) {
      // Deselecting from level 1: remove level 2, clear selection, go to initial
      if (currentLevels.length > 1) {
        currentLevels.removeRange(1, currentLevels.length);
      }
      currentLevels[0].selectedCategoryId = 0;
      subCategoriesCubit.onUpdateData(currentLevels);

      if (initialCategoryModel != null) {
        titleCubit.onUpdateData(initialCategoryModel!.name);
        currentCatId = initialCategoryModel!.id;
        getSubCategories(context, initialCategoryModel!.id, appendLevel: false);
      }
    } else {
      // Deselecting from level > 1: remove levels below, clear this selection,
      // get products for parent level's selected category
      if (levelIndex < currentLevels.length - 1) {
        currentLevels.removeRange(levelIndex + 1, currentLevels.length);
      }

      // Clear the selection for this level
      currentLevels[levelIndex].selectedCategoryId = 0;
      subCategoriesCubit.onUpdateData(currentLevels);

      // Get products for parent level's selected category
      final parentLevel = currentLevels[levelIndex - 1];
      final parentSelectedId = parentLevel.selectedCategoryId;

      if (parentSelectedId > 0) {
        // Find the parent category name
        final parentCategory = parentLevel.subCategory.subCats.firstWhere(
          (cat) => cat.id == parentSelectedId,
          orElse: () => parentLevel.subCategory.category,
        );

        titleCubit.onUpdateData(parentCategory.name);
        currentCatId = parentSelectedId;

        // Update specifications and price range from parent level's data
        final parentSubCategory = parentLevel.subCategory;
        RangeValues rangeValues = RangeValues(
          double.parse(parentSubCategory.priceRange.min),
          double.parse(parentSubCategory.priceRange.max),
        );
        rangeCubit.onUpdateData(
            PriceRangeParams(initial: rangeValues, value: rangeValues));
        specificationsCubit.onUpdateData(parentSubCategory);
      } else {
        // Parent has no selection, go to initial
        if (initialCategoryModel != null) {
          titleCubit.onUpdateData(initialCategoryModel!.name);
          currentCatId = initialCategoryModel!.id;
          getSubCategories(context, initialCategoryModel!.id,
              appendLevel: false);
          refreshBrands(context);
        }
      }
    }
    refreshBrands(context);
    pagingController.refresh();
  }

  void onNavigateBackToLevel(BuildContext context, int levelIndex) {
    if (levelIndex >= 0 && levelIndex < subCategoriesCubit.state.data.length) {
      final currentLevels =
          List<SubCategoryLevel>.from(subCategoriesCubit.state.data);
      currentLevels.removeRange(levelIndex + 1, currentLevels.length);
      subCategoriesCubit.onUpdateData(currentLevels);

      final level = currentLevels[levelIndex];
      currentCatId = level.selectedCategoryId;
      titleCubit.onUpdateData(level.subCategory.category.name);
      specificationsCubit.onUpdateData(level.subCategory);

      RangeValues rangeValues = RangeValues(
        double.parse(level.subCategory.priceRange.min),
        double.parse(level.subCategory.priceRange.max),
      );
      rangeCubit.onUpdateData(
        PriceRangeParams(initial: rangeValues, value: rangeValues),
      );

      pagingController.refresh();
    }
  }

  Future<void> getPopularProducts(int currentPage, {bool refresh = true}) async {
    var params = productsParams(currentPage, refresh);
    var data = await GetCategoryProducts().call(params);
    // print("--------${data.length}");
    final isLastPage = data.length < pageSize;
    if (currentPage == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      final nextPageKey = currentPage + 1;
      pagingController.appendPage(data, nextPageKey);
    }
    currentPageKey = currentPage;
  }

  void onFavChanged(Product model) {
    model.isWishlist = !model.isWishlist!;
    int index = pagingController.itemList!.indexWhere((e) => e.id == model.id);
    pagingController.itemList![index] = model;
    var data = pagingController.itemList;
    pagingController.itemList = [];
    pagingController.itemList = data;
  }

  void onCompareChanged(Product model) {
    model.isAddedTCompare = !model.isAddedTCompare!;
    int index = pagingController.itemList!
        .indexWhere((element) => element.id == model.id);
    pagingController.itemList![index] = model;
    var data = pagingController.itemList;
    pagingController.itemList = [];
    pagingController.itemList = data;
  }

  void changePriceValue(RangeValues values, BuildContext context) {
    rangeCubit.state.data!.value = values;
    rangeCubit.onUpdateData(rangeCubit.state.data!);
  }

  void onChangeBrand(BrandDomainModel? model) {
    if (model == brandModel) {
      brandModel = null;
      // brandId = 0;
    } else if (model != null) {
      brandModel = model;
      // brandId = brandModel!.id;
    }
    specificationsCubit.onUpdateData(specificationsCubit.state.data);
    brandsPagingController.itemList = [...?brandsPagingController.itemList];
    // pagingController.refresh();
  }

  void onOpenAttribute(int index) {
    // State is now managed locally in BuildFilterItem widget
    // No need to update the entire cubit for open/close state
    var specifications = specificationsCubit.state.data;
    specifications!.attributes[index].opened =
        !specifications.attributes[index].opened;
  }

  void onSelectAttributes(int index, int position) {
    var specifications = specificationsCubit.state.data;
    var attributes =
        specifications!.attributes[index].attributeValues[position];
    attributes.selected = !attributes.selected;
    specificationsCubit.onUpdateData(specifications);
  }

  void onOpenColor() {
    var specifications = specificationsCubit.state.data;
    specifications!.isColorAttributeOpened =
        !specifications.isColorAttributeOpened;
    specificationsCubit.onUpdateData(specifications);
  }

  void onSelectColor(int index) {
    var specifications = specificationsCubit.state.data;
    specifications!.colors[index].selected =
        !specifications.colors[index].selected;
    specificationsCubit.onUpdateData(specifications);
  }

  SearchProductsParams productsParams(int page, bool refresh) {
    var specifications = specificationsCubit.state.data;
    bool isMinRangeSelected = (rangeValues?.start ?? 0.0) < (rangeCubit.state.data?.value.start ?? 0.0) == true;
    bool isMAxRangeSelected = (rangeValues?.end ?? 0.0) > (rangeCubit.state.data?.value.end ?? 0.0) == true;
    var colors = specifications?.colors
        .where((element) => element.selected)
        .map((e) => e.code)
        .toList();
    var attributes = specifications?.attributes.map(
      (e) => e.attributeValues
          .where((val) => val.selected)
          .map((element) => element.value)
          .toList(),
    );
    var minPrice = isMinRangeSelected  || isMAxRangeSelected
        ? rangeCubit.state.data?.value.start
        : null;
    var maxPrice = (rangeValues?.end ?? 0.0) > (rangeCubit.state.data?.value.end ?? 0.0) == true || isMinRangeSelected
        ? rangeCubit.state.data?.value.end
        : null;
    return SearchProductsParams(
        sellerId: selectedSeller?.userId,
        catId: currentCatId,
        brandId: brandModel?.id,
        color: colors,
        attributes: attributes?.expand((element) => element).toList(),
        minPrice: minPrice,
        maxPrice: maxPrice,
        refresh: refresh,
        pageSize: pageSize,
        currentPage: page,
        searchKey: searchFieldCtr.text.trim());
  }

  void openDrawerFilter() {
    if (subCategoriesCubit.state.data.isNotEmpty ||
        (pagingController.itemList ?? []).isNotEmpty) {
      scaffold.currentState?.openDrawer();
    }
  }

  void resetFilter(BuildContext context) {
    // Get the current level's subcategory data
    final currentLevels = subCategoriesCubit.state.data;
    if (currentLevels.isEmpty) {
      Navigator.pop(context);
      return;
    }

    final currentLevel = currentLevels.last;
    final data = currentLevel.subCategory;
    final double minPrice = double.parse(data.priceRange.min);
    final double maxPrice = double.parse(data.priceRange.max);
    RangeValues rangeValues = RangeValues(minPrice, maxPrice);

    showBrandsCubit.onUpdateData(false);
    showSellersCubit.onUpdateData(false);


    var sellers = pagingSellersController.itemList;
    if (sellers != null) {
      for (var seller in sellers) {
        seller.isSelect = false;
      }
      pagingSellersController.itemList = [...sellers];
    }

    for (var item in data.attributes) {
      item.opened = false;
      for (var attribute in item.attributeValues) {
        attribute.selected = false;
      }
    }

    specificationsCubit.onUpdateData(data);

    rangeCubit.onUpdateData(PriceRangeParams(initial: rangeValues, value: rangeValues));
    if (isFilterAppliedBefore) {
      if(brandModel != null){
        brandsSearchCtr.clear();
        brandModel = null;
        getBrands(1);
      }
      if(selectedSeller != null){
        searchSellersController.clear();
        selectedSeller =null ;
        getBestSellers(1);
      }
      pagingController.refresh();
      isFilterAppliedBefore = false;
    }
    searchFieldCtr.clear();
    searchSellersController.clear();
    Navigator.pop(context);
  }

  void confirmFilter(BuildContext context) {
    isFilterAppliedBefore = true;
    Navigator.of(context).pop();
    pagingController.refresh();
  }

  /// Handles back navigation logic
  /// Returns true if the back action was handled (subcategories were cleared)
  /// Returns false if there are no selections (should perform normal pop)
  Future<bool> handleBackNavigation(BuildContext context) async {
    final currentLevels = subCategoriesCubit.state.data;

    // Check if user has selected any subcategories
    bool hasAnySelection = false;

    if (currentLevels.isNotEmpty) {
      // If we have more than 1 level, user has selected subcategories
      if (currentLevels.length > 1) {
        hasAnySelection = true;
      } else if (currentLevels.length == 1 && initialCategoryModel != null) {
        final firstLevel = currentLevels.first;
        if (firstLevel.selectedCategoryId > 0 && firstLevel.selectedCategoryId != initialCategoryModel!.id) {
          hasAnySelection = true;
        }
      }
    }

    if (hasAnySelection) {
      // Clear all selections and go back to initial category
      if (initialCategoryModel != null) {
        final firstLevel = currentLevels.isNotEmpty ? currentLevels.first : null;
        if (firstLevel != null) {
          firstLevel.selectedCategoryId = initialCategoryModel!.id;
          subCategoriesCubit.onUpdateData([firstLevel]);
        }
        titleCubit.onUpdateData(initialCategoryModel!.name);
        currentCatId = initialCategoryModel!.id;
        getSubCategories(context, initialCategoryModel!.id, appendLevel: false);
        brandsSearchCtr.clear();
        refreshBrands(context);
        pagingController.refresh();
      }

      return true; // Handled the back action
    }

    return false; // No selections, allow normal pop
  }

  void onPressSearch(BuildContext context) {
    FocusScope.of(context).unfocus();
    callProductsSearch();
  }

  void whileWriting(String value) {
    DebounceHelper.instance.startSearch(
      value: value,
      onSearch: (val) => callProductsSearch(),
    );

    if (value.isNotEmpty) {
      showClearIcon.onUpdateData(true);
    } else {
      showClearIcon.onUpdateData(false);
    }
  }

  void callProductsSearch() {
    pagingController.refresh();
    getPopularProducts(1);
  }

  void clearSearchField() {
    searchFieldCtr.clear();
    showClearIcon.onUpdateData(false);
    pagingController.refresh();
    getPopularProducts(1);
  }

  void showBrandsSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      enableDrag: true,
      isDismissible: false,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return BrandsSheetWidget(
          controller: this,
        );
      },
    );
  }

  Future<void> getBrands(int page, {bool refresh = true}) async {
    var params = _brandsParams(brandsPageSize, refresh, page);
    var data = await GetBrands().call(params);
    final isLastPage = data.length < brandsPageSize;
    brandModel?.id = data.firstWhere((element) => element.id == brandModel?.id).id;
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

  void refreshBrands(BuildContext context) {
    FocusScope.of(context).unfocus();
    callBrandsSearch();
  }

  void callBrandsSearch() {
    brandsCubit.onUpdateToInitState([]);
    brandsPagingController.refresh();
    getBrands(1);
  }

  void whileSearch(String value) {
    DebounceHelper.instance.startSearch(
      value: value,
      onSearch: (val) => callBrandsSearch(),
    );
  }

  @override
  GenericBloc<CartDomainModel> get cartItemsBloc =>
      getIt<CartHelper>().cartItemsBloc;

  @override
  Future<void> getCartItems({bool refresh = true}) async {
    await getIt<CartHelper>().getCartItems(refresh: refresh);
  }



  Future<bool> onIncreaseCartQnt(BuildContext context, CartItem cartItem, newQty) async {
    final success = await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
    if (success != null) {
      cartItem.quantity = newQty;
      cartItemsBloc.onUpdateData(success);
    }
    return success!=null;
  }

  @override
  Future<void> onIncreaseCart(BuildContext context, CartItem cartItem, GenericBloc<int> qntCubit, String value) async {
    if (qntCubit.state.data < cartItem.stockQty) {
      var newQty = qntCubit.state.data + 1;
      qntCubit.onUpdateData(newQty);
      DebounceHelper.instance.startSearch(
          value: value,
          milliseconds: 300,
          onSearch: (val) async{
           var result =  await onIncreaseCartQnt(context, cartItem, newQty);
           if(result == false){
             qntCubit.onUpdateData(cartItem.quantity);
           }
          });
    } else {
      CustomToast.showSimpleToast(
        msg: '${tr("only")} ${cartItem.stockQty} ${tr("availableStock")}',
      );
    }
  }

  Future<bool?> onDecreaseCartQnt(BuildContext context, CartItem cartItem, int newQty) async {
    if (newQty == 1) {
      deleteItemFromCart(context, cartItem);
      return null;
    }
    if (cartItem.quantity > 1) {
      final success = await getIt<CartHelper>().updateCartItem(newQty, cartItem.id);
      if (success != null) {
        cartItem.quantity = newQty;
        cartItemsBloc.onUpdateData(success);
      }
      return success != null;
    }else{
      return null;
    }
  }

  @override
  Future<void> onDecreaseCart(BuildContext context, CartItem cartItem, GenericBloc<int> qntCubit, String value) async {
    if (qntCubit.state.data > 1) {
      var newQty = qntCubit.state.data - 1;
      qntCubit.onUpdateData(newQty);
      DebounceHelper.instance.startSearch(
          value: value,
          milliseconds: AppConstants.instance.debounceTimeInBackGround,
          onSearch: (val) async{
            var result = await onDecreaseCartQnt(context, cartItem, newQty);
            if(result == false){
              qntCubit.onUpdateData(cartItem.quantity);
            }
          });
    }else{
      deleteItemFromCart(context,cartItem);

    }
  }


  @override
  Future<void> deleteItemFromCart(BuildContext context, CartItem cartItem, {bool enablePop = true}) async {
    getIt<LoadingHelper>().showLoadingDialog();
    final deleted = await getIt<CartHelper>().deleteItemFromCart(context, cartItem);
    if (deleted) {
      double subTotal = double.parse(cartItemsBloc.state.data.subTotal ?? "0.0");
      double removedItemPrice = double.parse(cartItem.total);
      double newSubTotal = subTotal - removedItemPrice;

      removeProductCounter(cartItem);

      cartItemsBloc.state.data.subTotal = newSubTotal.toStringAsFixed(2);
      cartItemsBloc.state.data.items?.remove(cartItem);

      if (cartItemsBloc.state.data.items?.isEmpty == true) {
        cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
        getIt<LoadingHelper>().dismissDialog();
        getIt<CartHelper>().updateCartCount(context, 0);
        if (enablePop) {
          Navigator.pop(context);
        }
      } else {
        await getCartItems();
        cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
        getIt<LoadingHelper>().dismissDialog();
      }
    }
  }

  @override
  void updateFavFromSheet(CartItem cartItem) {
    cartItem.isWishlist = !cartItem.isWishlist;
  }

  @override
  Future<void> refreshProductDetails(BuildContext context) async {
    // Standalone controller has no product details to refresh.
  }

  @override
  int? get productId => null;

  String remainToGetMinAmount() {
    var total = double.parse(cartItemsBloc.state.data.subTotal ?? "0.0");
    var minAmount = cartItemsBloc.state.data.minimumAmount ?? 0.0;
    var remain = minAmount - total;
    return remain.toStringAsFixed(2);
  }

  @override
  String get minAmountRemain => remainToGetMinAmount();

  void removeProductCounter(CartItem cartItem) {
    var cartList = cartItemsBloc.state.data.items;
    if (cartList != null && cartList.isNotEmpty == true) {
      var productList = pagingController.itemList!
          .where((element) => element.id == cartItem.productId);
      if (productList.isNotEmpty) {
        productList.first.addedQtyToCart = 0;
        pagingController.itemList = [...?pagingController.itemList];
      }
    }
  }

  Future<void> reduceProductQntInCart(
      BuildContext context, Product product, GenericBloc<int> loading) async {
    var cartList = cartItemsBloc.state.data.items;
    if (cartList != null && cartList.isNotEmpty == true) {
      var cartItems = cartList.where((element) => element.productId == product.id);
      if (cartItems.isNotEmpty) {
        await onDecreaseCart(context, cartItems.first, loading,cartItems.first.quantity.toString());
        // var index = pagingController.itemList!.indexOf(product);
        // pagingController.itemList![index] = product;
        // pagingController.itemList = [...?pagingController.itemList];
      }
    }
  }

  void reduceProductQntWhenReduceFromCart(CartItem cartItem) {
    var cartItems = pagingController.itemList?.where((element) => element.id == cartItem.productId).toList();
    if (cartItems?.isNotEmpty == true) {
      var product = cartItems!.first;
      product.addedQtyToCart = cartItem.quantity;
      pagingController.itemList = [...?pagingController.itemList];
    }
  }

  Future<void> refresh() async {
    getCartItems();
    await getPopularProducts(1);
  }


  BrandsParams _brandsParams(int paginate, bool refresh, int page) {
    return BrandsParams(
        paginate: paginate,
        refresh: refresh,
        page: page);

  }
}
