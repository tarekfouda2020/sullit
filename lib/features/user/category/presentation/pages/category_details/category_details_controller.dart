// ignore_for_file: use_build_context_synchronously

part of 'category_details_imports.dart';

class CategoryDetailsController {

  final TextEditingController searchFieldCtr = TextEditingController();

  final TextEditingController brandsSearchCtr = TextEditingController();


  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  final GenericBloc<List<SubCategoryLevel>> subCategoriesCubit =
      GenericBloc([]);

  final GenericBloc<SubCategory?> specificationsCubit = GenericBloc(null);
  final GenericBloc<List<BrandDomainModel>> brandsCubit = GenericBloc([]);
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
  List<BrandDomainModel> brands = [];
  // int? brandId;
  List<String> selectedColors = [];
  int currentCatId = 0;
  Category? initialCategoryModel;

  bool isFilterAppliedBefore = false;

  RangeValues? rangeValues;

  CategoryDetailsController(BuildContext context, Category categoryModel) {
    initialCategoryModel = categoryModel;
    titleCubit.onUpdateData(categoryModel.name);
    getData(context, categoryModel);
  }

  Future<void> getData(BuildContext context, Category categoryModel) async {
    await getSubCategories(context, categoryModel.id);
    getPopularProducts(1, refresh: false);
    getBrands(1);
    pagingController.addPageRequestListener((pageKey) {
      getPopularProducts(pageKey, refresh: true);
    });
    brandsPagingController.addPageRequestListener(
          (pageKey) {
        getBrands(pageKey);
      },
    );
  }

  Future<void> getSubCategories(BuildContext context, int id,
      {bool refresh = true, bool appendLevel = false}) async {
    // Temporarily set currentCatId for the API call
    final previousCatId = currentCatId;
    currentCatId = id;
    var params = productsParams(1, refresh);

    // print(">>>>>${params.toJson()}");
    var result = await GetSubCategories().call(params);

    if (result != null) {
      // Create a new level with the selected category ID
      final newLevel = SubCategoryLevel(
        subCategory: result,
        selectedCategoryId: id,
      );

      if (appendLevel) {
        // Append new level to existing list only if it has subcategories
        if (result.subCats.isNotEmpty) {
          final currentLevels =
              List<SubCategoryLevel>.from(subCategoriesCubit.state.data);
          currentLevels.add(newLevel);
          subCategoriesCubit.onUpdateData(currentLevels);
          currentCatId = id;
        }
        // If no subcategories, keep the original subCategory data visible
        // and only update selectedCategoryId so user can select another subcategory
        else {
          final currentLevels =
              List<SubCategoryLevel>.from(subCategoriesCubit.state.data);
          if (currentLevels.isNotEmpty) {
            // Keep the original subCategory data (with subCats list) so the level remains visible
            // Only update the selected category ID to show which one is selected
            currentLevels.last.selectedCategoryId = id;
            subCategoriesCubit.onUpdateData(currentLevels);
          }
          currentCatId = id;
        }
      } else {
        // Replace all levels (initial load)
        subCategoriesCubit.onUpdateData([newLevel]);
        currentCatId = id;
      }

       rangeValues = RangeValues(
        double.parse(result.priceRange.min),
        double.parse(result.priceRange.max),
      );
      rangeCubit.onUpdateData(
          PriceRangeParams(initial: rangeValues!, value: rangeValues!));
      specificationsCubit.onUpdateData(result);
    } else {
      // Restore previous catId if API call failed
      currentCatId = previousCatId;
    }
  }

  Future<void> onSubCatSelect(
      BuildContext context, Category selectedCat, int levelIndex) async {
    final currentLevels =
        List<SubCategoryLevel>.from(subCategoriesCubit.state.data);

    // Check if the category is already selected - if so, unselect it
    if (levelIndex < currentLevels.length &&
        currentLevels[levelIndex].selectedCategoryId == selectedCat.id) {
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
    final currentLevels =
        List<SubCategoryLevel>.from(subCategoriesCubit.state.data);

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
          getSubCategories(context, initialCategoryModel!.id, appendLevel: false);
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

  // Future<void> getSubCategories(BuildContext context, int id, int index,
  //     {bool refresh = true}) async {
  //   currentCatId = id;
  //   var params = _productsParams(1, refresh);
  //   print(">>>>>${params.toJson()}");
  //   var result = await GetSubCategories().call(params);
  //   _checkSubCategoriesList(result!, id, index);
  //   RangeValues rangeValues = RangeValues(double.parse(result.priceRange.min),
  //       double.parse(result.priceRange.max));
  //   rangeCubit.onUpdateData(
  //       PriceRangeParams(initial: rangeValues, value: rangeValues));
  //   specificationsCubit.onUpdateData(result);
  //   pagingController.refresh();
  // }

  // void _checkSubCategoriesList(SubCategory data, int id, int index) {
  //   final subCatsCubit = subCategoriesCubit.state.data;
  //   subCatsCubit.removeRange(index, subCatsCubit.length);
  //   var insertedItem = _insertedItem(id);
  //   if (data.subCats.isNotEmpty) {
  //     data.subCats.insert(0, insertedItem);
  //     var insertedSubCat = _insertedSubCat(data);
  //     subCatsCubit.add(insertedSubCat);
  //     if (index == 0) {
  //       subCatsCubit[index].selectedId = 0;
  //     } else {
  //       subCatsCubit[index - 1].selectedId = id;
  //     }
  //   } else if (subCatsCubit.isNotEmpty) {
  //     subCatsCubit[index - 1].selectedId = id;
  //   }
  //   subCategoriesCubit.onUpdateData(subCatsCubit);
  //   currentCatId = id;
  // }

  Future<void> getPopularProducts(int currentPage,
      {bool refresh = true}) async {
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

  // void onSelectSubCategory(
  //     BuildContext context, int selectedId, Category categoryModel, int index) {
  //   if (selectedId != categoryModel.id) {
  //     getSubCategories(
  //       context,
  //       categoryModel.id == 0 ? categoryModel.parentId ?? 0 : categoryModel.id,
  //       categoryModel.id == 0 ? index : index + 1,
  //     );
  //   }
  // }

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
    brandsPagingController.itemList = [
      ...?brandsPagingController.itemList
    ];
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
    var minPrice = (rangeValues?.start?? 0.0) < (rangeCubit.state.data?.value.start ?? 0.0) == true
        ? rangeCubit.state.data?.value.start
        : null;
    var maxPrice = (rangeValues?.end?? 0.0) < (rangeCubit.state.data?.value.end ?? 0.0) == true
        ? rangeCubit.state.data?.value.end
        : null;
    return SearchProductsParams(
      catId: currentCatId,
      brandId: brandModel?.id,
      color: colors,
      attributes: attributes?.expand((element) => element).toList(),
      minPrice: minPrice,
      maxPrice: maxPrice,
      refresh: refresh,
      pageSize: pageSize,
      currentPage: page,
      searchKey: searchFieldCtr.text.trim()
    );
  }

  void openDrawerFilter() {
    if (subCategoriesCubit.state.data.isNotEmpty ||
        (pagingController.itemList ?? []).isNotEmpty) {
      scaffold.currentState?.openDrawer();
    }
  }

  // bool hasFiltersApplied() {
  //   if (brandId != 0 || brandModel != null) {
  //     return true;
  //   }
  //
  //   var currentRange = rangeCubit.state.data;
  //   if (currentRange != null) {
  //     var initialRange = currentRange.initial;
  //     var currentValue = currentRange.value;
  //     if (currentValue.start != initialRange.start || currentValue.end != initialRange.end) {
  //       return true;
  //     }
  //   }
  //
  //   var specifications = specificationsCubit.state.data;
  //   if (specifications != null) {
  //     for (var attribute in specifications.attributes) {
  //       if (attribute.attributeValues.any((element) => element.selected)) {
  //         return true;
  //       }
  //     }
  //   }
  //   return false;
  // }

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
    brandModel = null;
    // brandId = 0;

    for (var item in data.attributes) {
      item.opened = false;
      for (var attribute in item.attributeValues) {
        attribute.selected = false;
      }
    }

    specificationsCubit.onUpdateData(data);
    rangeCubit.onUpdateData(
        PriceRangeParams(initial: rangeValues, value: rangeValues));
    if (isFilterAppliedBefore) {
      pagingController.refresh();
      isFilterAppliedBefore = false;
    }
    searchFieldCtr.clear();
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
      }
      // If we have only 1 level, check if user selected something different from initial category
      else if (currentLevels.length == 1 && initialCategoryModel != null) {
        final firstLevel = currentLevels.first;
        // Check if the selected ID is different from the initial category ID
        // and it's not 0 (unselected)
        if (firstLevel.selectedCategoryId > 0 &&
            firstLevel.selectedCategoryId != initialCategoryModel!.id) {
          hasAnySelection = true;
        }
      }
    }

    if (hasAnySelection) {
      // Clear all selections and go back to initial category
      if (initialCategoryModel != null) {
        // Clear all levels except the first one and reset its selection
        final firstLevel =
            currentLevels.isNotEmpty ? currentLevels.first : null;
        if (firstLevel != null) {
          firstLevel.selectedCategoryId = initialCategoryModel!.id;
          subCategoriesCubit.onUpdateData([firstLevel]);
        }

        // Reset to initial category
        titleCubit.onUpdateData(initialCategoryModel!.name);
        currentCatId = initialCategoryModel!.id;

        // Reload subcategories for initial category
        getSubCategories(context, initialCategoryModel!.id, appendLevel: false);
        brandsSearchCtr.clear();
        refreshBrands(context);

        // Refresh products
        pagingController.refresh();
      }

      return true; // Handled the back action
    }

    return false; // No selections, allow normal pop
  }



  void onPressSearch(BuildContext context){
  FocusScope.of(context).unfocus();
  pagingController.refresh();
  getPopularProducts(1);
  }

  void clearSearchField(){
    searchFieldCtr.clear();
    showClearIcon.onUpdateData(false);
    pagingController.refresh();
    getPopularProducts(1);
  }

  void whileWriting(String value){
    if(value.isNotEmpty){
      showClearIcon.onUpdateData(true);
    }else{
      showClearIcon.onUpdateData(false);
    }
  }

  void showBrandsSheet(BuildContext context){
     showModalBottomSheet(context: context,
       useRootNavigator: true,
       enableDrag: true,
       isDismissible: false,
       isScrollControlled: true,
       backgroundColor: Colors.transparent,
       builder: (context) {
       return BrandsSheetWidget(controller: this,);
     },);
  }


  Future<void> getBrands(int page ,{bool refresh = true}) async {
    var params = _brandsParams(brandsPageSize,refresh,page );
    var data = await GetBrands().call(params);
    final isLastPage = data.length < brandsPageSize;
    brandModel?.id = data.firstWhere((element) => element.id == brandModel?.id).id;
    if (page == 1) {
      if(data.isNotEmpty){
        brandsCubit.onUpdateData(data.take(11).toList());
      } else{
        brandsCubit.onUpdateData([]);
      }
      brandsPagingController.itemList = [];
      print("====>>>>> data ${brandsCubit.state.data.isNotEmpty}<<<<<<=======");
      print("====>>>>> data ${brandsCubit.state.data.length}<<<<<<=======");
    }
    if (isLastPage) {
      brandsPagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      brandsPagingController.appendPage(data, nextPageKey);
    }
  }


  void refreshBrands(BuildContext context){
    brandsCubit.onUpdateToInitState([]);
    FocusScope.of(context).unfocus();
    brandsPagingController.refresh();
    getBrands(1);
  }

  BrandsParams _brandsParams(int paginate, bool refresh, int page ) {
    return BrandsParams(
      paginate: paginate,
      refresh: refresh,
      page: page,
      keyword: brandsSearchCtr.text.trim(),
      categoryId: currentCatId
    );
  }



}
