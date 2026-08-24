// ignore_for_file: use_build_context_synchronously

part of 'home_imports.dart';

class HomeController {
  final GenericBloc<int> homeTabCubit = GenericBloc(0);
  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;
  final GenericBloc<bool> visibleSearch = GenericBloc(false);
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  OrderCardDomainModel? _firstUnPaidOrder;

  bool showToast = false;
  int offersTabIndex = 0;
  GenericBloc<CartDomainModel> get cartItemsBloc =>
      getIt<CartHelper>().cartItemsBloc;
  List<String> tabs = [
    Res.home,
    Res.category,
    "",
    Res.offers,
    Res.accountGoldIcon
  ];

  HomeController() {
    checkIosTracking();
    checkIfEmailExist();
    getPurchasingHistory();
  }



  Future<void> initUserLocation(BuildContext context) async {
    final granted = await getIt<PermissionServices>().requestPermission(
      Permission.locationWhenInUse,
      context,
    );
    if (granted) {
      final location = await getIt<LocationService>().getCurrentLocation();
      if (location != null) {
        getIt<LocationService>().setUserLocation(location);
      }
    }
    OrdersHelper.instance.getHome(refresh: false);
    OrdersHelper.instance.getHome();
  }

  Future<bool> checkForUpdate() async {
    final NewVersionPlus newVersion = NewVersionPlus(
      androidId: AppConstants.instance.appId,
      iOSId: AppConstants.instance.iosAppId,
    );
    final status = await newVersion.getVersionStatus();
    if (status != null && status.canUpdate) {
      showUpdateDialog();
      return true;
    } else {
      return false;
    }
  }

  void showUpdateDialog() {
    BuildContext context = getIt<GlobalContext>().context();
    showDialog(
      barrierDismissible: false,
      useRootNavigator: true,
      context: context,
      builder: (context) {
        return const UpdateDialogWidget();
      },
    );
  }

  Future<void> getCartItems(BuildContext context, {bool refresh = true}) async {
    CartDomainModel result =
        await getIt<CartHelper>().getCartItems(refresh: refresh);
    var qntCubitState = context.read<CountCubit>().state;
    context
        .read<CountCubit>()
        .onUpdateCount(result.totalQnt, qntCubitState.discount);
  }

  List<Widget> pages() => [
        HomeMain(homeController: this),
        Categories(homeController: this),
        // Summary(homeController: controller),
        Gaps.empty,
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: homeTabCubit,
          builder: (context, state) =>
              Coupons(homeController: this, index: offersTabIndex),
        ),
        More(homeController: this),
      ];

  List<String> tabsText(BuildContext context) => [
        tr('home', context: context),
        tr('categories', context: context),
        // tr('explore', context: context),
        tr('cart', context: context),
        tr('offers', context: context),
        tr("account", context: context),
      ];

  void initBottomNavigation(TickerProvider ticker, int index) {
    tabController =
        TabController(length: 5, vsync: ticker, initialIndex: index);
    tabController.animateTo(index);
    homeTabCubit.onUpdateData(index);
  }

  void animateTabsPages(int index, BuildContext context) {
    Future.delayed(const Duration(milliseconds: 350), () {
      if (index == 0) {
        OrdersHelper.instance.getHome(refresh: false);
        OrdersHelper.instance.getHome();
        getOffersData(context);
      }
      if (index == 2) {
        AutoRouter.of(context).push(CartRoute());
        return;
      } else {
        if (index == 3) {
          // If navigation came from a notification we already set offersTabIndex.
          // In that case, don't override it here.
          if (showShareHolderOffers == false) {
            if (saleTabsData.onSale?.isNotEmpty == true) {
              offersTabIndex = getSaleTabIndex(
                  context.isShareHolder
                      ? SaleTabType.shareholderOffers
                      : SaleTabType.onSale,
                  context.isShareHolder);
            }
          }
        }
        homeTabCubit.onUpdateData(index);
        tabController.animateTo(index);
      }
    });
  }

  void checkAuth(BuildContext context) {
    bool auth = context.isAuth;
    if (auth) {
      context.read<CountCubit>().onUpdateCount(0, 0);
      getIt<AuthHelper>().onLogOut(context);
    } else {
      AutoRouter.of(context).push(const LoginRoute());
    }
  }

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }

  Future<bool> onBack(BuildContext context) async {
    if (tabController.index > 0) {
      tabController.animateTo(0);
      homeTabCubit.onUpdateData(0);
      showToast = false;
      return false;
    }
    if (showToast == false) {
      showToast = true;
      CustomToast.showSnakeBar(tr("PressAgainToExit"));
      Future.delayed(const Duration(seconds: 6))
          .then((value) => showToast = false);
      return false;
    } else {
      SystemNavigator.pop();
      return true;
    }
  }

  Future<void> getPurchasingHistory({bool refresh = true}) async {
    BuildContext ctx = getIt<GlobalContext>().context();
    bool isAuth = ctx.read<DeviceCubit>().state.model.auth;
    if (await checkForUpdate()) {
      return;
    }
    if (isAuth) {
      MyOrdersParams params = _myOrdersParams(refresh);
      List<OrderCardDomainModel> data = await GetPurchasingHistory().call(params);
      Set<OrderCardDomainModel> unPaidOrder =
          data.where((element) => element.showUnPaidOnlineOrderActions).toSet();
      if (unPaidOrder.isNotEmpty) {
        _firstUnPaidOrder = unPaidOrder.first;
        showUnPaidOrderSheet(ctx);
      }
    }
  }

  Future<void> checkIfEmailExist() async {
    BuildContext ctx = getIt<GlobalContext>().context();
    bool isAuth = ctx.read<DeviceCubit>().state.model.auth;
    if (isAuth) {
      String? userEmail = ctx.read<UserCubit>().state.model?.email;
      if (userEmail == null ||
          userEmail.isEmpty ||
          userEmail.validateEmail() != null) {
        CustomToast.showSimpleToast(
            msg: tr("enter_email_to_change_password"), type: ToastType.error);
        AutoRouter.of(ctx).push(const ProfileRoute());
      }
    }
  }

  void showUnPaidOrderSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return UnPaidOrderSheetWidget(
            order: _firstUnPaidOrder!, controller: this);
      },
    );
  }

  void viewOrderDetails(BuildContext context) {
    Navigator.pop(context);
    AutoRouter.of(context).push(
      OrderDetailsPageRoute(
        isReturnedOrder: false,
        id: _firstUnPaidOrder!.id,
      ),
    );
  }

  void onPayOrder(BuildContext context) async {
    Navigator.pop(context);
    BuildContext ctx = getIt<GlobalContext>().context();
    var result = await PayOrder().call(_firstUnPaidOrder!.id);
    if (result.isNotEmpty) {
      if (_firstUnPaidOrder!.isPaymentOnline) {
        AutoRouter.of(ctx).push(
          PaymentRoute(transactionUrl: result, orderPaymentFromHome: true),
        );
      } else {
        CustomToast.showSimpleToast(
          msg: tr('paymentDone'),
          type: ToastType.success,
        );
        AutoRouter.of(ctx).push(OrderDetailsPageRoute(
            isReturnedOrder: false, id: _firstUnPaidOrder!.id));
      }
    }
  }

  SaleTabsData saleTabsData = SaleTabsData();

  void getOffersData(
    BuildContext context,
  ) {
    fetchSaleTabsData(context, refresh: false);
    fetchSaleTabsData(context);
  }

  Future<void> fetchSaleTabsData(BuildContext context,
      {bool refresh = true}) async {
    var params =
        GenericPaginateParams(currentPage: 1, refresh: refresh, pageSize: 10);

    OffersParamsWidget offersParams({bool isVipProducts = false}) =>
        OffersParamsWidget(
          paginateParams: params,
          isVipProducts: isVipProducts,
        );
    try {
      List<Future<List<ProductCard>>> futures = [
        !context.isShareHolder
            ? GetVipOffers().call(offersParams(isVipProducts: true))
            : Future.value([]),
        context.isShareHolder
            ? GetShareholderProducts().call(offersParams(isVipProducts: true))
            : Future.value([]),
        GetNewArrival().call(offersParams()),
        GetOnSale().call(offersParams()),
        GetBestRated().call(offersParams()),
      ];

      var results = await Future.wait(futures);
      saleTabsData.vipOffers = !context.isShareHolder ? results[0] : [];
      saleTabsData.shareholderOffers = context.isShareHolder ? results[1] : [];
      saleTabsData.newArrival = results[2];
      saleTabsData.onSale = results[3];
      saleTabsData.bestRated = results[4];
    } catch (e) {
      log("Error fetching sale tabs data: $e");
    }
  }

  bool showShareHolderOffers = false;
  int getSaleTabIndex(SaleTabType type, bool isShareHolder) {
    List<SaleTabType> visibleTypes = [];
    bool show(List? list) => list == null || list.isNotEmpty;

    if (!isShareHolder && show(saleTabsData.vipOffers)) {
      visibleTypes.add(SaleTabType.vipOffers);
    }
    if (isShareHolder && (show(saleTabsData.shareholderOffers))) {
      visibleTypes.add(SaleTabType.shareholderOffers);
    }
    if (show(saleTabsData.newArrival)) visibleTypes.add(SaleTabType.newArrival);
    if (show(saleTabsData.onSale)) visibleTypes.add(SaleTabType.onSale);
    if (show(saleTabsData.bestRated)) visibleTypes.add(SaleTabType.bestRated);

    int index = visibleTypes.indexOf(type);
    log("index is $index");
    return index != -1 ? index : 0;
  }



  MyOrdersParams _myOrdersParams(bool refresh){
    return MyOrdersParams(
      paginateParams: _historyParams( refresh),
      type:  OrderTypeEnum.merchant,
    );
  }


  GenericPaginateParams _historyParams(bool refresh) {
    return GenericPaginateParams(
      currentPage: 1,
      refresh: refresh,
      pageSize: AppConstants.instance.paginationLimit,
    );
  }

  void checkIosTracking() {
    bool authorizedTrack = FacebookEventsHelper.instance.iosEnableTracking;
    if (authorizedTrack == false && Platform.isIOS) {
      FacebookEventsHelper.instance.enableIosTracking();
    }
  }
}
