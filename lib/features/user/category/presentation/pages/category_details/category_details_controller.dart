part of 'category_details_imports.dart';

class CategoryDetailsController {
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  final GenericBloc<List<SubCategory>> subCategoriesCubit = GenericBloc([]);
  final GenericBloc<SubCategory?> specificationsCubit = GenericBloc(null);
  final GenericBloc<PriceRangeParams?> rangeCubit = GenericBloc(null);

  final PagingController<int, Product> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;

  BrandDomainModel? brandModel;
  List<BrandDomainModel> brands = [];
  int brandId = 0;
  List<String> selectedColors = [];
  int currentCatId = 0;

  CategoryDetailsController(BuildContext context, int catId) {
    getSubCategories(context, catId, 0).then((value) {
      getPopularProducts(1, refresh: false);
      pagingController.addPageRequestListener((pageKey) {
        getPopularProducts(pageKey, refresh: true);
      });
    });
  }

  Future<void> getSubCategories(BuildContext context, int id, int index,
      {bool refresh = true}) async {
    currentCatId = id;
    var params = _productsParams(1, refresh);
    var result = await GetSubCategories().call(params);
    _checkSubCategoriesList(result!, id, index);
    RangeValues rangeValues = RangeValues(double.parse(result.priceRange.min),
        double.parse(result.priceRange.max));
    rangeCubit.onUpdateData(
        PriceRangeParams(initial: rangeValues, value: rangeValues));
    specificationsCubit.onUpdateData(result);
    pagingController.refresh();
  }

  void _checkSubCategoriesList(SubCategory data, int id, int index) {
    final subCatsCubit = subCategoriesCubit.state.data;
    subCatsCubit.removeRange(index, subCatsCubit.length);
    var insertedItem = _insertedItem(id);
    if (data.subCats.isNotEmpty) {
      data.subCats.insert(0, insertedItem);
      subCatsCubit.add(SubCategory(
        subCats: data.subCats,
        selectedId: data.subCats.first.id,
        category: data.category,
        priceRange: data.priceRange,
        attributes: data.attributes,
        colors: data.colors,
        brands: data.brands,
        categories: data.categories,
      ));
      if (index == 0) {
        subCatsCubit[index].selectedId = 0;
      } else {
        subCatsCubit[index - 1].selectedId = id;
      }
    } else if (subCatsCubit.isNotEmpty) {
      subCatsCubit[index - 1].selectedId = id;
    }
    subCategoriesCubit.onUpdateData(subCatsCubit);
    currentCatId = id;
  }

  Future<void> getPopularProducts(int currentPage,
      {bool refresh = true}) async {
    var params = _productsParams(currentPage, refresh);
    print(">>>>>>>>${params.toJson()}");
    var data = await GetCategoryProducts().call(params);
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
  }

  void onSelectSubCategory(
      BuildContext context, int selectedId, Category categoryModel, int index) {
    if (selectedId != categoryModel.id) {
      getSubCategories(
        context,
        categoryModel.id == 0 ? categoryModel.parentId ?? 0 : categoryModel.id,
        categoryModel.id == 0 ? index : index + 1,
      );
    }
  }

  void onFavChanged(Product model) {
    model.isWishlist = !model.isWishlist!;
    int index = pagingController.itemList!.indexWhere((e) => e.id == model.id);
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
    if (model != null) {
      brandModel = model;
      brandId = brandModel!.id;
    } else {
      brandId = 0;
    }
    pagingController.refresh();
  }

  void onOpenAttribute(int index) {
    var specifications = specificationsCubit.state.data;
    specifications!.attributes[index].opened =
        !specifications.attributes[index].opened;
    specificationsCubit.onUpdateData(specifications);
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

  SearchProductsParams _productsParams(int page, bool refresh) {
    var specifications = specificationsCubit.state.data;
    var colors = specifications?.colors
        .where((element) => element.selected)
        .map((e) => e.code)
        .toList();
    var attributes = specifications?.attributes.map((e) => e.attributeValues
        .where((val) => val.selected)
        .map((element) => element.value)
        .toList());
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
}
