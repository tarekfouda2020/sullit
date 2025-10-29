// ignore_for_file: use_build_context_synchronously

part of 'home_main_imports.dart';

class HomeMainController {
  final GenericBloc<HomeDomainModel?> homeCubit = GenericBloc(null);
  final GenericBloc<List<ProductSections>> sectionsCubit = GenericBloc([]);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController scrollController = ScrollController();
  final GenericBloc<bool> scrollCubit = GenericBloc(true);
  final GenericBloc<TimerEntity> countDownCubit = GenericBloc(TimerEntity());
  final GenericBloc<List<Product>> vipOffersCubit = GenericBloc([]);
  final GenericBloc<List<Product>> arrivalCubit = GenericBloc([]);
  final GenericBloc<List<Product>> onSaleCubit = GenericBloc([]);
  final GenericBloc<List<Product>> bestRatedCubit = GenericBloc([]);
  final GenericBloc<List<BrandDomainModel>> brandsCubit = GenericBloc([]);

  List<ProductSections> allSections = [];
  int currentPage = 1;
  int pageSize = 5;

  late final HomeController homeController;

  HomeMainController(BuildContext context, HomeController controller) {
    homeController = controller;
    controller.searchController.clear();
    controller.visibleSearch.onUpdateData(false);
    // getHome(context, refresh: false);
    getHome(context);
    getVipOffers();
    getBestRatedOffers();
    getNewArrivalOffers();
    getOnSaleOffers();
    getAllBrands();
    getProductSections();
    scrollController.addListener(scrollListener);
  }

  void scrollListener() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      getProductSections();
    }
  }

  void changeCouponsTab(int index){
    homeController.index = index;
    homeController.homeTabCubit.onUpdateData(index);
  }

  void getHome(BuildContext context, {bool refresh = true}) async {
    var result = await GetHome().call(refresh);
    context
        .read<CountCubit>()
        .onUpdateCount(result!.cartCount, result.discountRate);
    // result?.flashSales.add(FlashSale(id: 0, title: tr('coupons'), date: DateTime.now(), banner: ""));
    homeCubit.onUpdateData(result);
  }

  Future<void> getProductSections() async {
    if (sectionsCubit.state.data.length / 5 == currentPage - 1 ||
        sectionsCubit.state.data.isEmpty) {
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

  void onChangeFav(Product item,BuildContext context) {
    var isAuth = context.read<DeviceCubit>().state.model.auth;
    if(isAuth){
      _synchronizeFavoriteStatus(item);
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

    return value.toString().padLeft(2, '0')[index];
  }

  String getCountDownSingleNumber(int number,int index){
    return number.toString().padLeft(2, '0')[index];
  }



  Future<void> getProductWithSkuAndRoute(BuildContext context,String sku)async{
    getIt<LoadingHelper>().showLoadingDialog();
    await  GetSkuProduct().call(sku).then((value) {
      getIt<LoadingHelper>().dismissDialog();
      if(value!=null){
        AutoRouter.of(context).push(
            ProductDetailsRoute(
              isFav: value.product.isWishlist ?? false,
              productId: value.product.id ?? 0,
              isResale: value.product.isResale ?? false,
            ));
      }else{
        CustomToast.showSnakeBar(
          // "${tr('productScanned')} code: $barcode",
          tr("productNotFound"),
          type: ToastType.error,
        );
      }
    },);
  }


  Future<void> scanProduct(BuildContext context)async{
    String? barcode = await getIt<BarcodeService>().scanBarcode();
    if(barcode!=null && barcode.isNotEmpty){
      log("========>>>>>> code: $barcode<<<<<<<=======");
          getProductWithSkuAndRoute(context,"5285001226436");
          CustomToast.showSnakeBar(
            // "${tr('productScanned')} code: $barcode",
            tr('productScanned'),
            type: ToastType.success,
          );
    }
  }

  void routeToSearchPage(BuildContext context) {
    AutoRouter.of(context).push(
      SearchRoute(
        searchText: homeController.searchController.text,
      ),
    );
  }

  // used to get vip offers
  void getVipOffers({bool refresh = true}) async {
    var result = await GetVipOffers().call(refresh);
    vipOffersCubit.onUpdateData(result);
  }

  void _synchronizeFavoriteStatus(Product item) {
    final newFavoriteStatus = !item.isWishlist!;
    for (var product in vipOffersCubit.state.data) {
      if (product.id == item.id) {
        product.isWishlist = newFavoriteStatus;
      }
    }
    for (var product in arrivalCubit.state.data) {
      if (product.id == item.id) {
        product.isWishlist = newFavoriteStatus;
      }
    }
    for (var product in onSaleCubit.state.data) {
      if (product.id == item.id) {
        product.isWishlist = newFavoriteStatus;
      }
    }
    for (var product in bestRatedCubit.state.data) {
      if (product.id == item.id) {
        product.isWishlist = newFavoriteStatus;
      }
    }
    for (var section in sectionsCubit.state.data) {
      for (var product in section.products) {
        if (product.id == item.id) {
          product.isWishlist = newFavoriteStatus;
        }
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
  void onChangeVipOffersFav(Product item) {
    _synchronizeFavoriteStatus(item);
  }

  // ---------------------------------------------------------

  // used to get new arrival offers
  void getNewArrivalOffers({bool refresh = true}) async {
    var result = await GetNewArrival().call(refresh);
    arrivalCubit.onUpdateData(result);
  }

  // used to add new arrival offer on favorite
  void onChangeArrivalOffersFav(Product item) {
    _synchronizeFavoriteStatus(item);
  }

  // --------------------------------------------------------

  // used to get on sale offers
  void getOnSaleOffers({bool refresh = true}) async {
    var result = await GetOnSale().call(refresh);
    onSaleCubit.onUpdateData(result);
  }

  // used to add on sale offer on favorite
  void onChangeOnSaleOffersFav(Product item) {
    _synchronizeFavoriteStatus(item);
  }

  // --------------------------------------------------------

  // used to get best rated offers
  void getBestRatedOffers({bool refresh = true}) async {
    var result = await GetBestRated().call(refresh);
    bestRatedCubit.onUpdateData(result);
  }

  // used to add best rated offer on favorite
  void onChangeBestRatedFav(Product item) {
    _synchronizeFavoriteStatus(item);
  }

  // --------------------------------------------------------

  Future<void> getAllBrands({bool refresh = true}) async {
    var params = _brandsParams(refresh);
    var data = await GetBrands().call(params);
    brandsCubit.onUpdateData(data);
  }

  BrandsParams _brandsParams(bool refresh) {
    return BrandsParams(
      paginate: 5,
      refresh: refresh,
      page: 1,
    );
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
}
