// ignore_for_file: use_build_context_synchronously

part of 'home_main_imports.dart';

class HomeMainController {
  final GenericBloc<HomeDomainModel?> homeCubit = GenericBloc(null);
  final GenericBloc<List<ProductSections>> sectionsCubit = GenericBloc([]);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController scrollController = ScrollController();
  final GenericBloc<bool> scrollCubit = GenericBloc(true);
  final GenericBloc<TimerEntity> countDownCubit = GenericBloc(TimerEntity());
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
    getProductSections();
    scrollController.addListener(scrollListener);

  }

  void scrollListener() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      getProductSections();
    }
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

  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist!;
    homeCubit.onUpdateData(homeCubit.state.data);
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
   await  GetSkuProduct().call(sku).then((value) {
     if(value!=null){
       AutoRouter.of(context).push(
           ProductDetailsRoute(
               productId: value.product.id,
               isResale: value.product.isResale
           )
       );
     }
   },);
  }


  void scanProduct(BuildContext context)async{
    String? barcode = await getIt<Utilities>().scanBarcode();
    if(barcode!=null && barcode.isNotEmpty){
          CustomToast.showSnakeBar(
           tr('productScanned'),
            type: ToastType.success,
          );
           // getProductWithSku(context,barcode);
    }

  }


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
