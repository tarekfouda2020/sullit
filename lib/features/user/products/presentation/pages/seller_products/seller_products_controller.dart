part of 'seller_products_imports.dart';

class SellerProductsController {


  final PagingController<int, Product> pagingController = PagingController(firstPageKey: 1);
  final PagingController<int, BrandDomainModel> brandsPagingController = PagingController(firstPageKey: 1);
  final GenericBloc<BrandDomainModel?> selectedBrandCubit = GenericBloc<BrandDomainModel?>(null);
  int pageSize = 12;
  bool isFilterAppliedBefore = false;

   SellerProductDomainModel? allSellerData;
   late final int shopId;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GenericBloc<bool> showBrandsCubit = GenericBloc<bool>(false);
  final GenericBloc<PriceRangeParams?> rangeCubit = GenericBloc(null);


  SellerProductsController(int id){
    shopId = id;
    pagingController.addPageRequestListener((pageKey) {
      getProducts(pageKey, refresh: false);
      getProducts(pageKey);
    });

    brandsPagingController.addPageRequestListener((pageKey) {
      getBrands(pageKey, refresh: false);
      getBrands(pageKey);
    });
  }


  Future<void> getProducts(int page, {bool refresh = true}) async {
    var params = _params(page, refresh);
    var result = await GetSellerProducts().call(params);
    allSellerData = result;
    updateRangeValue(result);
    final List<Product> data = result?.sectionProductModel.products ?? <Product>[];
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
  }


  void updateRangeValue(SellerProductDomainModel? data){
    RangeValues rangeValues = RangeValues(double.parse(data?.priceRange.min ?? "0.0"),
        double.parse(data?.priceRange.max??"0.0"));
    rangeCubit.onUpdateData(
        PriceRangeParams(initial: rangeValues, value: rangeValues)
    );
  }


  void openDrawerFilter() {
    if(allSellerData != null || pagingController.itemList!.isNotEmpty){
      scaffoldKey.currentState?.openDrawer();
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




  void showBrandsSheet(BuildContext context){
    showBrandsCubit.onUpdateData(true);
    showModalBottomSheet(
      isScrollControlled: false,

      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Dimens.dp10),
        ),
      ),
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => AllBrandsSheetWidget(
        controller : this
      ),
    );
  }


  void onSelectBrand(BuildContext context,BrandDomainModel model){
    Navigator.pop(context);
    var brands = brandsPagingController.itemList;
    if(model.isSelected){
      model.isSelected = false;
      selectedBrandCubit.onUpdateData(null);
    }else{
      for(var item in brands ?? <BrandDomainModel>[]){
        item.isSelected = false;
      }
      model.isSelected = true;
      selectedBrandCubit.onUpdateData(model);
    }
    brandsPagingController.itemList = [];
    brandsPagingController.itemList = brands;
    showBrandsCubit.onUpdateData(false);
  }



  void resetFilter(BuildContext context) {

    final double minPrice = double.parse(allSellerData!.priceRange.min);
    final double maxPrice = double.parse(allSellerData!.priceRange.max);
    RangeValues rangeValues = RangeValues(minPrice, maxPrice);

    selectedBrandCubit.onUpdateData(null);
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

  SellerProductsParams _params(int page, bool refresh){
    return SellerProductsParams(
        sellerId: shopId,
        paginateParams: _paginateParams(page, refresh),
        brandId: selectedBrandCubit.state.data?.id,
      minPrice: rangeCubit.state.data?.value.start,
      maxPrice: rangeCubit.state.data?.value.end,
    );
  }


   GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }




  Future<void> getBrands(int page ,{bool refresh = true}) async {
    var params = _brandsParams(pageSize,refresh,page );
    var data = await GetBrands().call(params);
    final isLastPage = data.length < pageSize;
    if (page == 1) {
      brandsPagingController.itemList = [];
    }
    if (isLastPage) {
      brandsPagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      brandsPagingController.appendPage(data, nextPageKey);
    }
  }

  BrandsParams _brandsParams(int paginate, bool refresh, int page ) {
    return BrandsParams(
      paginate: paginate,
      refresh: refresh,
      page: page,
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

}