// ignore_for_file: use_build_context_synchronously

part of 'customers_products_imports.dart';

class CustomerProductsController {
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  final GenericBloc<List<ProductSpecifications>> subCategoriesCubit =
      GenericBloc([]);
  final GenericBloc<ProductSpecifications?> specificationsCubit = GenericBloc(null);
  final PagingController<int, CustomerProduct> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;
  BrandDomainModel? brandModel;
  SortTypes? sortTypeModel;
  SortTypes? sortConditionModel;
  int currentCatId = 0;

  CustomerProductsController(BuildContext context) {
    getProductSpecifications(context).then((value) {
      getCustomerProducts(1, refresh: false);
      pagingController.addPageRequestListener((pageKey) {
        getCustomerProducts(pageKey, refresh: true);
      });
    });
  }

  Future<void> getProductSpecifications(BuildContext context,
      {bool refresh = true}) async {
    var params = _productsParams(1, refresh);
    var result = await GetProductSpecifications().call(params);
    var insertedItem = _insertedItem(0);
    result?.categories.insert(0, insertedItem);
    specificationsCubit.onUpdateData(result);
  }

  Future<void> getSubCats(BuildContext context, int id, int index,
      {bool refresh = true}) async {
    currentCatId = id;
    var params = _productsParams(1, refresh);
    var result = await GetProductSpecifications().call(params);
    _checkSubCategoriesList(result!, id, index);
    pagingController.refresh();
  }

  void _checkSubCategoriesList(ProductSpecifications data, int id, int index) {
    final catsCubit = specificationsCubit.state.data;
    final subCatsCubit = subCategoriesCubit.state.data;
    subCatsCubit.removeRange(index, subCatsCubit.length);
    var insertedItem = _insertedItem(id);
    if (data.subCategories.isNotEmpty) {
      data.subCategories.insert(0, insertedItem);
      var insertedSpecifications = _insertedSpecifications(data);
      subCatsCubit.add(insertedSpecifications);
      if (index == 0) {
        subCatsCubit[index].selectedId = 0;
      } else {
        subCatsCubit[index - 1].selectedId = id;
      }
    } else if (subCatsCubit.isNotEmpty) {
      subCatsCubit[index - 1].selectedId = id;
    }
    subCategoriesCubit.onUpdateData(subCatsCubit);
    specificationsCubit.onUpdateData(catsCubit);
    currentCatId = id;
  }

  Future<void> getCustomerProducts(int currentPage,
      {bool refresh = true}) async {
    var params = _productsParams(currentPage, refresh);
    var data = await GetCustomerProducts().call(params);
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

  void onChangeMainCategory(BuildContext context, Category model, int index) {
    var catCubit = specificationsCubit.state.data;
    catCubit?.categories.map((e) => e.isSelected = false).toList();
    model.isSelected = true;
    specificationsCubit.onUpdateData(catCubit);
    getSubCats(context, model.id, 0);
  }

  void onSelectSubCategory(
      BuildContext context, int selectedId, Category categoryModel, int index) {
    if (selectedId != categoryModel.id) {
      getSubCats(
        context,
        categoryModel.id == 0 ? categoryModel.parentId ?? 0 : categoryModel.id,
        categoryModel.id == 0 ? index : index + 1,
      );
    }
  }

  void onChangeBrand(BrandDomainModel? model) {
    brandModel = null;
    if (model != null) {
      brandModel = model;
    }
    pagingController.refresh();
  }

  void onChangeConditions(SortTypes? model) {
    sortConditionModel = null;
    if (model != null) {
      sortConditionModel = model;
    }
    pagingController.refresh();
  }

  void onChangeSortType(SortTypes? model) {
    sortTypeModel = null;
    if (model != null) {
      sortTypeModel = model;
    }
    pagingController.refresh();
  }

  CustomerProductsParams _productsParams(int page, bool refresh) {
    return CustomerProductsParams(
      brandId: brandModel?.id,
      catId: currentCatId,
      condition: sortConditionModel?.type,
      sortBy: sortTypeModel?.type,
      pageSize: pageSize,
      currentPage: page,
      refresh: refresh,
    );
  }

  ProductSpecifications _insertedSpecifications(ProductSpecifications data) {
    return ProductSpecifications(
      selectedId: data.subCategories.first.id,
      sortConditions: data.sortConditions,
      sortTypes: data.sortTypes,
      brands: data.brands,
      categories: data.categories,
      subCategories: data.subCategories,
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
      subCats: [],
      isSelected: true,
    );
  }
}
