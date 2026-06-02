part of 'pharmacy_details_imports.dart';

class PharmacyDetailsController {


  final int? pharmacyId;
 final Shop? pharmacy;

  ShopCategory? selectedCategory;

  final GenericBloc<Shop?> pharmacyBloc = GenericBloc<Shop?>(null);

  final PagingController<int, ShopCategory> categoriesPagingController = PagingController(firstPageKey: 1);
  final PagingController<int, Product> productsPagingController = PagingController(firstPageKey: 1);



  final TextEditingController productSearchCtr = TextEditingController();

  final GenericBloc<Pharmacy?> pharmacyCubit = GenericBloc<Pharmacy?>(null);
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);
  final GenericBloc<bool> isLoadingNextPage = GenericBloc<bool>(false);

  PharmacyDetailsController({required this.pharmacyId, required this.pharmacy}){
    if(pharmacyId!= null){
      _fetchShopDetails(fromRemote: false);
      _fetchShopDetails();
      _getCategories();
      _getPharmacyProducts();
    } else if(pharmacy!= null){
      pharmacyBloc.onUpdateData(pharmacy!);
      _getCategories();
      _getPharmacyProducts();
    }
  }

  int? get getPharmacyId  => pharmacyBloc.state.data?.id ?? pharmacyId;


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
    if(getPharmacyId == null){
      return ;
    }

    ShopCategoryParams params = _pharamcyCategoryParams(getPharmacyId!, page,refresh);

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
    if(getPharmacyId == null){
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
    final isLastPage = (data.length) < pageSize;
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
    shopId: id ,
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
        categoryId: selectedCategory?.id
    );
  }




  Future<void> _fetchShopDetails({bool fromRemote = true}) async {
    var data = await GetShopDetails().call(
      ShopIdParams(shopId: pharmacyId!, refresh: fromRemote),
    );
    pharmacyBloc.onUpdateData(data);
  }



  int pageSize = 12;

  final String pharmacyName = "Al Manara Pharmacy";
  final String pharmacyLogo = "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg";
  final double pharmacyRating = 4.5;
  final List<Insurance> pharmacyInsurance = [
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Daman", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "ADNIC", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "ADNIC", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "ADNIC", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "ADNIC", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "GIG", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "GIG", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "GIG", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "GIG", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
    Insurance(name: "Al Buhaira", logo: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg"),
  ];
  final List<ShopCategory> pharmacyCategories = [
    ShopCategory(id: 1, name: tr("all"), icon: "", slug: "", description: '', metaTitle: '', metaDescription: ''),
    ShopCategory(id: 2, name: tr("medicines"), icon: "", slug: "", description: '', metaTitle: '', metaDescription: ''),
    ShopCategory(id: 3, name: tr("health_care"), icon: "", slug: "", description: '', metaTitle: '', metaDescription: ''),
  ];

  GenericBloc<CartDomainModel> get cartItemsBloc => getIt<CartHelper>().cartItemsBloc;

  // PharmacyDetailsController() {
  //   _initPharmacyData();
  //   _getMockProducts(1);
  // }


  void getCartData() {}

  bool cartHaveSellerProduct() {
    return false;
  }

  double neededAmount() {
    return 0.0;
  }


  void onFavChanged(Product model) {}

  void onSelectCategory(ShopCategory model) {
    selectedCategory = model;
    model.isSelect = !model.isSelect;
    categoriesPagingController.itemList  = [
      ...?categoriesPagingController.itemList
    ];
    productsPagingController.refresh();
  }

  void searchProducts(BuildContext context, {bool enableUnFocus = true}) {}

  void clearSearchField() {}

  void whileWriting(BuildContext context, String value) {}

  void onPressSupportedInsurance(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (context) => SupportedInsuranceBottomSheetWidget(
        insurance: pharmacyInsurance,
      ),
    );
  }






  void onPressViewCart(BuildContext context, bool fromCart) {
    AutoRouter.of(context).push(const PharmacyCartRoute());
  }
}
