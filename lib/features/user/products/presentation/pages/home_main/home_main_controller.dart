part of 'home_main_imports.dart';

class HomeMainController {
  final GenericBloc<List<ProductSections>> sectionsCubit = GenericBloc([]);
  final GenericBloc<int> swiperIndexCubit = GenericBloc(0);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController scrollController = ScrollController();
  final GenericBloc<bool> scrollCubit = GenericBloc(true);
  final GenericBloc<TimerEntity> countDownCubit = GenericBloc(TimerEntity());
  final GenericBloc<List<ProductCard>> vipOffersCubit = GenericBloc([]);
  final GenericBloc<List<ProductCard>> arrivalCubit = GenericBloc([]);
  final GenericBloc<List<ProductCard>> onSaleCubit = GenericBloc([]);
  final GenericBloc<List<ProductCard>> bestRatedCubit = GenericBloc([]);
  final GenericBloc<List<BrandDomainModel>> brandsCubit = GenericBloc([]);

  final GenericBloc<File> prescriptionFileCubit = GenericBloc<File>(File(""));
  final GenericBloc<SavedPrescriptionModel?> selectedSavedPrescriptionCubit =
      GenericBloc<SavedPrescriptionModel?>(null);
  final PagingController<int, SavedPrescriptionModel> savedPrescriptionsPagingController =
      PagingController(firstPageKey: 1);

  GenericBloc<HomeDomainModel?> get homeCubit => OrdersHelper.instance.homeCubit;

  List<ProductSections> allSections = [];
  int currentPage = 1;
  int pageSize = 5;

  Set<int> _deletedOrdersIds = <int>{};

  late final HomeController homeController;

  HomeMainController(BuildContext context, HomeController controller) {
    getSavedIds();
    homeController = controller;
    controller.searchController.clear();
    controller.visibleSearch.onUpdateData(false);
    getAllBrands(refresh: false);
    getAllBrands();

  }



  void getAllData(){
    getVipOffers(refresh: false);
    getVipOffers();

    getBestRatedOffers(refresh: false);
    getBestRatedOffers();

    getNewArrivalOffers(refresh: false);
    getNewArrivalOffers();

    getOnSaleOffers(refresh: false);
    getOnSaleOffers();

    getProductSections();
    scrollController.addListener(scrollListener);
    savedPrescriptionsPagingController.addPageRequestListener((page) {
      getSavedPrescriptions(page);
    });
  }


  void scrollListener() {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      // getProductSections();
    }
  }

  void changeCouponsTab(SaleTabType type, BuildContext context) {
    homeController.showShareHolderOffers = true;
    int index = homeController.getSaleTabIndex(type, context.isShareHolder);
    homeController.offersTabIndex = index;
    Future.delayed(const Duration(milliseconds: 450), () {
      homeController.showShareHolderOffers = false;
    });
  }

  void getHome({bool refresh = true}) {
    OrdersHelper.instance.getHome(refresh: refresh);
  }

  Future<void> getProductSections() async {
    if (sectionsCubit.state.data.length / 5 == currentPage - 1 || sectionsCubit.state.data.isEmpty) {
      var result = await GetProductSections().call(currentPage);
      final isLastPage = result.length < pageSize;
      if (currentPage == 1) {
        sectionsCubit.onUpdateData([]);
      }
      if (isLastPage) {
        sectionsCubit.state.data.addAll(result);
      } else {
        currentPage = currentPage + 1;
        sectionsCubit.state.data.addAll(result);
      }
      sectionsCubit.onUpdateData(sectionsCubit.state.data);
    }
  }

  void onChangeFav(ProductCard item, BuildContext context) {
    var isAuth = context.isAuth;
    if (isAuth) {
      _synchronizeFavByProductId(item.id, !item.isWishlist!);
    }
  }

  void navigateToDeals(BuildContext context) {
    var deal = homeCubit.state.data?.flashSales;
    AutoRouter.of(context).push(SaleDetailsRoute(dealId: deal!.id));
  }

  String getDigit(Duration duration, String unit, int index) {
    int value;
    switch (unit) {
      case 'days':
        value = duration.inDays;
        break;
      case 'hours':
        value = duration.inHours % 24;
        break;
      case 'minutes':
        value = duration.inMinutes % 60;
        break;
      case 'seconds':
        value = duration.inSeconds % 60;
        break;
      default:
        throw ArgumentError('Invalid time unit: $unit');
    }
    try {
      return value.toString().padLeft(2, '0')[index];
    } catch (e) {
      return "";
    }
  }

  String getCountDownSingleNumber(int number, int index) {
    return number.toString().padLeft(2, '0')[index];
  }

  Future<void> getProductWithSkuAndRoute(
      BuildContext context, String sku) async {
    getIt<LoadingHelper>().showLoadingDialog();
    await GetSkuProduct().call(sku).then(
      (value) {
        getIt<LoadingHelper>().dismissDialog();
        if (value != null) {
          AutoRouter.of(context).push(ProductDetailsRoute(
            params: ProductDetailsPageRouteParams(
              productId: value.product.id ?? 0,
              isFav: value.product.isWishlist ?? false,
              isResale: value.product.isResale ?? false,
            ),
          ));
        } else {
          CustomToast.showSnakeBar(
            // "${tr('productScanned')} code: $barcode",
            tr("productNotFound"),
            type: ToastType.error,
          );
        }
      },
    );
  }

  Future<void> scanProduct(BuildContext context) async {
    String? barcode = await getIt<BarcodeService>().scanBarcode(context);
    if (barcode != null && barcode.isNotEmpty) {
      getProductWithSkuAndRoute(context, barcode);
      CustomToast.showSnakeBar(
        // "${tr('productScanned')} code: $barcode",
        tr('productScanned'),
        type: ToastType.success,
      );
    }
  }

  Future<void> routeToSearchPage(BuildContext context) async {
    if (homeController.searchController.text.isEmpty) {
      return;
    }
    await AutoRouter.of(context).push(
      SearchRoute(
        searchText: homeController.searchController.text,
      ),
    );
    homeController.searchController.clear();
  }

  // used to get vip offers
  void getVipOffers({bool refresh = true}) async {
    var params = _vipOffers(refresh);
    var result = await GetVipOffers().call(params);
    vipOffersCubit.onUpdateData(result);
  }

  GenericPaginateParams _vipOffersParams(bool refresh) => GenericPaginateParams(
        pageSize: pageSize,
        refresh: refresh,
        currentPage: 1,
      );

  OffersParamsWidget _vipOffers(bool refresh) {
    return OffersParamsWidget(paginateParams: _vipOffersParams(refresh));
  }

  void _synchronizeFavByProductId(int? id, bool newFavStatus) {
    for (var product in vipOffersCubit.state.data) {
      if (product.id == id) product.isWishlist = newFavStatus;
    }
    for (var product in arrivalCubit.state.data) {
      if (product.id == id) product.isWishlist = newFavStatus;
    }
    for (var product in onSaleCubit.state.data) {
      if (product.id == id) product.isWishlist = newFavStatus;
    }
    for (var product in bestRatedCubit.state.data) {
      if (product.id == id) product.isWishlist = newFavStatus;
    }
    for (var section in sectionsCubit.state.data) {
      for (var product in section.products) {
        if (product.id == id) product.isWishlist = newFavStatus;
      }
    }
    vipOffersCubit.onUpdateData(vipOffersCubit.state.data);
    arrivalCubit.onUpdateData(arrivalCubit.state.data);
    onSaleCubit.onUpdateData(onSaleCubit.state.data);
    bestRatedCubit.onUpdateData(bestRatedCubit.state.data);
    sectionsCubit.onUpdateData(sectionsCubit.state.data);
    if (homeCubit.state.data != null) {
      homeCubit.onUpdateData(homeCubit.state.data);
    }
  }

  // used to add vip offer on favorite
  void onChangeVipOffersFav(ProductCard item) {
    _synchronizeFavByProductId(item.id, !item.isWishlist);
  }

  // ---------------------------------------------------------

  // used to get new arrival offers
  void getNewArrivalOffers({bool refresh = true}) async {
    var params = GenericPaginateParams(
      pageSize: pageSize,
      refresh: refresh,
      currentPage: 1,
    );
    var widgetParams = OffersParamsWidget(paginateParams: params);
    var result = await GetNewArrival().call(widgetParams);
    arrivalCubit.onUpdateData(result);
  }

  // used to add new arrival offer on favorite
  void onChangeArrivalOffersFav(ProductCard item) {
    _synchronizeFavByProductId(item.id, !item.isWishlist);
  }

  void getOnSaleOffers({bool refresh = true}) async {
    var params = GenericPaginateParams(
      pageSize: pageSize,
      refresh: refresh,
      currentPage: 1,
    );
    var widgetParams = OffersParamsWidget(paginateParams: params);
    var result = await GetOnSale().call(widgetParams);
    onSaleCubit.onUpdateData(result);
  }

  // used to add on sale offer on favorite
  void onChangeOnSaleOffersFav(ProductCard item) {
    _synchronizeFavByProductId(item.id, !item.isWishlist);
  }

  // --------------------------------------------------------

  // used to get best rated offers
  void getBestRatedOffers({bool refresh = true}) async {
    var params = GenericPaginateParams(
      pageSize: pageSize,
      refresh: refresh,
      currentPage: 1,
    );
    var widgetParams = OffersParamsWidget(paginateParams: params);
    var result = await GetBestRated().call(widgetParams);
    bestRatedCubit.onUpdateData(result);
  }

  // used to add best rated offer on favorite
  void onChangeBestRatedFav(ProductCard item) {
    _synchronizeFavByProductId(item.id, !item.isWishlist);
  }

  // --------------------------------------------------------

  Future<void> getAllBrands({bool refresh = true}) async {
    var params = _brandsParams(refresh);
    var data = await GetBrands().call(params);
    brandsCubit.onUpdateData(data);
  }

  List<Category> firstCategoriesSection() {
    List<Category> cats = homeCubit.state.data!.categories;
    if (cats.length >= 10) {
      return cats.take((cats.length / 2).toInt()).toList();
    } else {
      return cats;
    }
  }

  List<Category> secondCategoriesSection() {
    List<Category> cats = homeCubit.state.data!.categories;
    if (firstCategoriesSection().length > 5) {
      return cats.sublist((cats.length / 2).toInt(), cats.length).toList();
    } else {
      return <Category>[];
    }
  }

  void onPressSeeOffers(BuildContext context) {
    context.isShareHolder ? routeToOffersTab(context) : routeToMembershipSubscribe(context);
  }

  void routeToOffersTab(BuildContext context) {
    homeController.animateTabsPages(3, context);
  }

  void routeToMembershipSubscribe(BuildContext context) {
    bool isAuth = context.isAuth;
    if (isAuth) {
      AutoRouter.of(context).push(MembershipSubscribeRoute());
    } else {
      CustomToast.showAuthDialog(context);
    }
  }

  BrandsParams _brandsParams(bool refresh) {
    return BrandsParams(
      paginate: 5,
      refresh: refresh,
      page: 1,
    );
  }

  Future<void> goNotification(BuildContext context) async {
    bool auth = context.isAuth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    var result = await AutoRouter.of(context).push(const NotificationsRoute());
    if (result is String) {
      homeController.showShareHolderOffers = true;
      if (result == NotifyEnum.shareholderProducts.getValue()) {
        changeCouponsTab(SaleTabType.shareholderOffers, context);
      } else if (result == NotifyEnum.offerNewArrival.getValue()) {
        changeCouponsTab(SaleTabType.newArrival, context);
      } else if (result == NotifyEnum.offerOnSale.getValue()) {
        changeCouponsTab(SaleTabType.onSale, context);
      } else if (result == NotifyEnum.offerVipProducts.getValue()) {
        changeCouponsTab(SaleTabType.vipOffers, context);
      }
      homeController.animateTabsPages(3, context);
      Future.delayed(const Duration(milliseconds: 450), () {
        homeController.showShareHolderOffers = false;
      });
    }
  }

  void onSwiperTapped(BuildContext context, SliderDomainModel model) {
    if (model.value == null || model.value?.trim().isEmpty == true) {
      return;
    }
    switch (model.getLinkType) {
      case LinkTypeEnum.product:
        routeTpProductDetails(context, model.value!);
      case LinkTypeEnum.externalLink:
        HelperMethods.instance.launchURL(url: model.value!);
      case LinkTypeEnum.category:
        routeTpCategoryDetails(context, model.value!);
    }
  }

  void onBannerTwoTapped(BuildContext context, BannerDomainModel model) {
    if (model.value == null || model.value?.trim().isEmpty == true) {
      return;
    }
    switch (model.getLinkType) {
      case LinkTypeEnum.product:
        routeTpProductDetails(context, model.value!);
      case LinkTypeEnum.externalLink:
        HelperMethods.instance.launchURL(url: model.value!);
      case LinkTypeEnum.category:
        routeTpCategoryDetails(context, model.value!);
    }
  }

  void routeTpProductDetails(BuildContext context, String id) {
    try {
      var prodId = int.parse(id);
      AutoRouter.of(context).push(ProductDetailsRoute(
        params: ProductDetailsPageRouteParams(productId: prodId),
      ));
    } catch (e) {
      log("error while route to product details");
    }
  }

  void routeTpCategoryDetails(BuildContext context, String id) {
    try {
      var catId = int.parse(id);
      AutoRouter.of(context)
          .push(CategoryDetailsRoute(catId: catId, fromHome: true));
    } catch (e) {
      log("error while route to category details");
    }
  }

  void routeToPharmaciesList(BuildContext context) {
    AutoRouter.of(context).push( PharmaciesListRoute());
  }

  void routeToPharmaciesListWithPrescriptionOrder(BuildContext context) {
    AutoRouter.of(context).push( PharmaciesListRoute(
      makePrescriptionOrder: true,
      initialPrescriptionFile: prescriptionFileCubit.state.data,
      initialSavedPrescription: selectedSavedPrescriptionCubit.state.data
    ));
  }



  void openCurrentOrderDetails(BuildContext context, OrdersListDomainModel order){
    if(order.isPharmacy){
      AutoRouter.of(context).push(
          PharmacyOrderDetailsRoute(
              id: order.id));
    }else{
      AutoRouter.of(context).push(
          OrderDetailsPageRoute(
              isReturnedOrder: false,
              id: order.id));
    }
  }

  // Same API-calling pattern as AttachPrescriptionController.getSavedPrescriptions.
  Future<void> getSavedPrescriptions(int page, {bool refresh = true}) async {
    var params = GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: AppConstants.instance.paginationLimit,
    );
    var result = await GetSavedPrescriptions().call(params);
    var isLastPage = result.length < AppConstants.instance.paginationLimit;
    if (page == 1) {
      savedPrescriptionsPagingController.itemList = [];
    }
    if (isLastPage) {
      savedPrescriptionsPagingController.appendLastPage(result);
    } else {
      savedPrescriptionsPagingController.appendPage(result, page + 1);
    }
  }

  Future<void> onPickPrescriptionFile() async {
    var result = await getIt<Utilities>().getAttachmentFile(
      FileType.custom,
      allowedExtensions: const ["pdf",'jpg', 'jpeg', 'png'],
    );
    if (result != null) {
      prescriptionFileCubit.onUpdateData(result);
      selectedSavedPrescriptionCubit.onUpdateData(null);
    }
  }

  void onRemovePrescriptionFile() {
    prescriptionFileCubit.onUpdateData(File(""));
  }

  void onSelectSavedPrescription(SavedPrescriptionModel model) {
    selectedSavedPrescriptionCubit.onUpdateData(model);
    prescriptionFileCubit.onUpdateData(File(""));
  }

  void onRemoveSelectedSavedPrescription() {
    selectedSavedPrescriptionCubit.onUpdateData(null);
  }

  void onPressAttachPrescription(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return AttachPrescriptionSheetWidget(controller: this);
      },
    );
  }

  void onPressChooseFromSavedPrescriptions(BuildContext context) {
    getSavedPrescriptions(1, refresh: false);
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return SavedPrescriptionsBottomSheetWidget(controller: this);
      },
    );
  }

  void onPressContinuePrescription(BuildContext context) {
    if (prescriptionFileCubit.state.data.path.isEmpty &&
        selectedSavedPrescriptionCubit.state.data == null) {
      CustomToast.showSimpleToast(
        msg: tr('pleaseAttachPrescriptionFirst'),
      );
      return;
    }
    Navigator.pop(context);
    routeToPharmaciesListWithPrescriptionOrder(context);
  }

//
// Future<void> scanSkuNumber() async {
//   try {
//     // Method 1: Get just the SKU
//     String? sku = await SimpleBarcodeScanner.scanAndGetSku();
//
//     if (sku != null) {
//       print('Scanned SKU: $sku');
//       // TODO: Add your logic here to handle the SKU
//     }
//   } catch (e) {
//     CustomToast.showSimpleToast(
//       msg: tr('scanError'),
//       type: ToastType.error,
//     );
//   }
// }
//
// /// Alternative method to get both barcode and SKU
// Future<void> scanBarcodeAndSku() async {
//   try {
//     // Method 2: Get both barcode and SKU
//     Map<String, String?> result = await SimpleBarcodeScanner.scanBarcodeAndSku();
//
//     String? barcode = result['barcode'];
//     String? sku = result['sku'];
//
//     if (barcode != null && sku != null) {
//       print('Barcode: $barcode');
//       print('SKU: $sku');
//
//       // TODO: Add your logic here
//     }
//   } catch (e) {
//     CustomToast.showSimpleToast(
//       msg: tr('scanError'),
//       type: ToastType.error,
//     );
//   }
// }
//
// /// Alternative method to get just the barcode
// Future<void> scanBarcodeOnly() async {
//   try {
//     // Method 3: Get just the barcode without processing
//     String? barcode = await SimpleBarcodeScanner.scanBarcodeOnly();
//
//     if (barcode != null) {
//       print('Barcode: $barcode');
//
//       // You can manually extract SKU from barcode
//       String sku = SimpleBarcodeScanner.extractSkuFromBarcode(barcode);
//       print('Extracted SKU: $sku');
//
//       // TODO: Add your logic here
//     }
//   } catch (e) {
//     CustomToast.showSimpleToast(
//       msg: tr('scanError'),
//       type: ToastType.error,
//     );
//   }
// }


  Future<void> getSavedIds() async {
    _deletedOrdersIds =  await OrdersHelper.instance.getCurrentOrdersSavedIds();
  }

  void removeTrackedOrder(int id, int index){
    _deletedOrdersIds.add(id);
    var home = homeCubit.state.data!;
    var list = home.currentOrders;
    list.removeAt(index);
    home.currentOrders = [
      ...list
    ];
    homeCubit.onUpdateData(home);
    saveIds(_deletedOrdersIds);
  }


  Future<void> saveIds(Set<int> ids) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      LocalStorageKeys.trackOrderIds,
      jsonEncode(ids.toList()),
    );
  }

  void routeToInstoreShopping(BuildContext context, ShopCardDomainModel shop) {
    final sellerId = shop.userId;
    if (InstoreCartHelper.instance.hasItemsFromDifferentSeller(sellerId)) {
      final cart = InstoreCartHelper.instance.getLocalCart();
      showDifferentSellerDialog(
        context,
        cartSellerName: cart?.sellerName ?? '',
        shop: shop,
      );
      return;
    }
    AutoRouter.of(context).push(InstoreCartPageRoute(
      sellerId: sellerId,
      sellerName: shop.name,
      sellerImage: shop.logo,
      hasBranches: shop.hasBranches,
    ));
  }

  void showDifferentSellerDialog(
    BuildContext context, {
    required String cartSellerName,
    required ShopCardDomainModel shop,
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
                  sellerId: shop.userId,
                  sellerName: shop.name,
                  sellerImage: shop.logo,
                  hasBranches: shop.hasBranches,
                ));
              }
            });
          },
        );
      },
    );
  }



void getDistance(){
  const point1 = LatLng(31.4294774, 31.6724592);
  const point2 = LatLng(31.28, 30.85);

  final distance = Geolocator.distanceBetween(
    point1.latitude,
    point1.longitude,
    point2.latitude,
    point2.longitude,
  );

  print('${distance / 1000} km');
}


}
