// ignore_for_file: use_build_context_synchronously

part of 'category_details_imports.dart';

class CategoryDetailsController {
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  final GenericBloc<SubCategory?> subCategoriesCubit = GenericBloc(null);

  // final GenericBloc<List<SubCategory>> subCategoriesCubit = GenericBloc([]);
  final GenericBloc<SubCategory?> specificationsCubit = GenericBloc(null);
  final GenericBloc<PriceRangeParams?> rangeCubit = GenericBloc(null);
  final GenericBloc<String> titleCubit = GenericBloc("");
  final GenericBloc<bool> showBrandsCubit = GenericBloc<bool>(false);
  final PagingController<int, Product> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;
  int currentPageKey = 1;

  BrandDomainModel? brandModel;
  List<BrandDomainModel> brands = [];
  int? brandId;
  List<String> selectedColors = [];
  int currentCatId = 0;
  RangeValues? _initialRangeValues;

  bool isFilterAppliedBefore = false;

  // CategoryDetailsController(BuildContext context, int catId) {
  //   getSubCategories(context, catId, 0).then((value) {
  //     getPopularProducts(1, refresh: false);
  //     pagingController.addPageRequestListener((pageKey) {
  //       getPopularProducts(pageKey, refresh: true);
  //     });
  //   });
  // }

  CategoryDetailsController(BuildContext context, Category categoryModel) {
    titleCubit.onUpdateData(categoryModel.name);
    getData(context,categoryModel);

  }


  Future<void> getData(BuildContext context, Category categoryModel)async{
    await getSubCategories(context, categoryModel.id);
    getPopularProducts(1, refresh: false);
    getPopularProducts(1, refresh: true);
    pagingController.addPageRequestListener((pageKey) {
      getPopularProducts(pageKey, refresh: true);
    });
  }

  Future<void> getSubCategories(BuildContext context, int id, {bool refresh = true}) async {
    currentCatId = id;
    var params = productsParams(1, refresh);
    // print(">>>>>${params.toJson()}");
    var result = await GetSubCategories().call(params);
    subCategoriesCubit.onUpdateData(result);
    RangeValues rangeValues = RangeValues(double.parse(result!.priceRange.min),
        double.parse(result.priceRange.max));
    rangeCubit.onUpdateData(
        PriceRangeParams(initial: rangeValues, value: rangeValues));
    specificationsCubit.onUpdateData(result);
  }

  void onSubCatSelect(BuildContext context, Category selectedCat) {
    // print("@@@@@@${selectedCat.id}");
    subCategoriesCubit.onUpdateToInitState(null);
    titleCubit.onUpdateData(selectedCat.name);
    getSubCategories(context, selectedCat.id);
    pagingController.refresh();
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
    if(model == brandModel){
      brandModel = null;
      brandId = 0;
    } else if (model != null) {
      brandModel = model;
      brandId = brandModel!.id;
    }
    specificationsCubit.onUpdateData(specificationsCubit.state.data);
    // pagingController.refresh();
  }

  void onOpenAttribute(int index) {
    // State is now managed locally in BuildFilterItem widget
    // No need to update the entire cubit for open/close state
    var specifications = specificationsCubit.state.data;
    specifications!.attributes[index].opened = !specifications.attributes[index].opened;
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
    return SearchProductsParams(
      catId: currentCatId,
      brandId: brandId,
      color: colors,
      attributes: attributes?.expand((element) => element).toList(),
      minPrice: rangeCubit.state.data?.value.start,
      maxPrice: rangeCubit.state.data?.value.end,
      refresh: refresh,
      pageSize: pageSize,
      currentPage: page,
    );
  }

  SubCategory _insertedSubCat(SubCategory data) {
    return SubCategory(
      subCats: data.subCats,
      selectedId: data.subCats.first.id,
      category: data.category,
      priceRange: data.priceRange,
      attributes: data.attributes,
      colors: data.colors,
      brands: data.brands,
      categories: data.categories,
    );
  }

  Category _insertedItem(int parentId) {
    return Category(
      id: 0,
      banner: "",
      name: "All",
      parentId: parentId,
      digital: 0,
      icon: "",
      orderLevel: 0,
      slug: "",
    );
  }

  void openDrawerFilter() {
    if(subCategoriesCubit.state is GenericUpdateState || (pagingController.itemList?? [] ).isNotEmpty){
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
    // if (hasFiltersApplied() == false) {
    //   Navigator.pop(context);
    //   return;
    // }

    SubCategory data = subCategoriesCubit.state.data!;
    final double minPrice = double.parse(data.priceRange.min);
    final double maxPrice = double.parse(data.priceRange.max);
    RangeValues rangeValues = RangeValues(minPrice, maxPrice);
    
    showBrandsCubit.onUpdateData(false);
    brandModel = null;
    brandId = 0;
    
    for(var item in subCategoriesCubit.state.data?.attributes ?? <Attributes>[]){
      item.opened = false;
      for(var attribute in item.attributeValues){
        attribute.selected = false;
      }
    }

    subCategoriesCubit.onUpdateData(subCategoriesCubit.state.data);
    rangeCubit.onUpdateData(PriceRangeParams(initial: rangeValues, value: rangeValues));
    if(isFilterAppliedBefore){
      pagingController.refresh();
      isFilterAppliedBefore = false;
    }
    Navigator.pop(context);
  }


  void confirmFilter(BuildContext context) {
    isFilterAppliedBefore = true;
    Navigator.of(context).pop();
    pagingController.refresh();
  }


}
