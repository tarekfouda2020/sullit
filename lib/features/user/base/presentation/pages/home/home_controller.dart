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

  Orders? _firstUnPaidOrder;

  bool showToast = false;
  int index = 0;
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
    checkIfEmailExist();
    getPurchasingHistory();
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
              Coupons(homeController: this, index: index),
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

  void setUserLang(BuildContext context, String lang) async {
    getIt<Utilities>().changeLanguage(lang, context);
    Phoenix.rebirth(context);
  }



  void initBottomNavigation(TickerProvider ticker, int index) {
    tabController =
        TabController(length: 5, vsync: ticker, initialIndex: index);
    tabController.animateTo(index);
    homeTabCubit.onUpdateData(index);
  }

  void animateTabsPages(int index, BuildContext context) {
    Future.delayed(const Duration(milliseconds: 700), () {
      if (index == 2) {
        AutoRouter.of(context).push(const CartRoute());
        return;
      } else {
        homeTabCubit.onUpdateData(index);
        tabController.animateTo(index);
      }
    });
  }

  void goNotification(BuildContext context) {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    AutoRouter.of(context).push(const NotificationsRoute());
  }

  void checkAuth(BuildContext context) {
    bool auth = context.read<DeviceCubit>().state.model.auth;
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
    if (isAuth) {
      GenericPaginateParams params = _historyParams(refresh);
      List<Orders> data = await GetPurchasingHistory().call(params);
      Set<Orders> unPaidOrder =
          data.where((element) => element.showUnPaidOnlineOrderActions).toSet();
      if (unPaidOrder.isNotEmpty) {
        _firstUnPaidOrder = unPaidOrder.first;
        showUnPaidOrderSheet(ctx);
      }
    }
  }

  void checkIfEmailExist() {
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
        order: _firstUnPaidOrder!,
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
            isReturnedOrder: false, order: _firstUnPaidOrder!));
      }
    }
  }

  SaleTabsData saleTabsData = SaleTabsData();

  Future<void> fetchSaleTabsData(BuildContext context) async {
    var params = GenericPaginateParams(currentPage: 1, refresh: true, pageSize: 1);

    OffersParamsWidget offersParams({bool isVipProducts = false}) => OffersParamsWidget(
      paginateParams: params,
      isVipProducts: isVipProducts,
    );
    try {
      List<Future<List<Product>>> futures = [
        !context.isShareHolder
            ? GetVipOffers().call(offersParams(isVipProducts: true))
            :Future.value([]),
        context.isShareHolder
            ? GetShareholderProducts().call(offersParams(isVipProducts: true))
            : Future.value([]),

        GetNewArrival().call(offersParams()),
        GetOnSale().call(offersParams()),
        GetBestRated().call(offersParams()),
      ];

      var results = await Future.wait(futures);
      saleTabsData.vipOffers = !context.isShareHolder
          ?results[0]
          :[];
      saleTabsData.shareholderOffers =
      context.isShareHolder ? results[1] : [];
      saleTabsData.newArrival = results[2];
      saleTabsData.onSale = results[3];
      saleTabsData.bestRated = results[4];
    } catch (e) {
      log("Error fetching sale tabs data: $e");
    }
  }

  GenericPaginateParams _historyParams(bool refresh) {
    return GenericPaginateParams(
      currentPage: 1,
      refresh: refresh,
      pageSize: 12,
    );
  }
}
