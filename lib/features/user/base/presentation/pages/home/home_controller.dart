part of 'home_imports.dart';

class HomeController {
  final GenericBloc<int> homeTabCubit = GenericBloc(0);
  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;
  final GenericBloc<bool> visibleSearch = GenericBloc(false);
  final TextEditingController searchController = TextEditingController();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool showToast = false;
  int index=0;

  List<String> tabs = [
    Res.home,
    Res.category,
    "",
    Res.offers,
    Res.menuIcon
  ];


  List<Widget> pages() => [
    HomeMain(homeController: this),
    Categories(homeController: this),
    // Summary(homeController: controller),
    Gaps.empty,
    Coupons(homeController: this,index: index),
    More(homeController: this),
  ];

  List<String> tabsText(BuildContext context) => [
        tr('home', context: context),
        tr('categories', context: context),
        // tr('explore', context: context),
        tr('cart', context: context),
        tr('offers', context: context),
        tr("more", context: context),
      ];

  void setUserLang(BuildContext context, String lang) async {
    getIt<Utilities>().changeLanguage(lang, context);
    Phoenix.rebirth(context);
  }

  // void showLangBottomSheet(BuildContext context, HomeController controller) {
  //   showModalBottomSheet(
  //     shape: const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(15), topRight: Radius.circular(15))),
  //     backgroundColor: context.colors.white,
  //     context: context,
  //     builder: (context) => BuildLangBottomSheet(
  //       controller: controller,
  //     ),
  //   );
  // }



  void initBottomNavigation(TickerProvider ticker, int index) {
    tabController =
        TabController(length: 5, vsync: ticker, initialIndex: index);
    tabController.animateTo(index);
    homeTabCubit.onUpdateData(index);
  }

  void animateTabsPages(int index, BuildContext context) {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    // if (index == 2 && !auth) {
    //   CustomToast.showAuthDialog(context);
    //   return;
    // }
    if (index == 2) {
      routeToCart(context);
      return;
    } else{
      homeTabCubit.onUpdateData(index);
      tabController.animateTo(index);
    }
    // if (index != homeTabCubit.state.data) {
    //   homeTabCubit.onUpdateData(index);
    //   tabController.animateTo(index);
    // }
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

  void routeToCart(BuildContext context){
    AutoRouter.of(context).push(const CartRoute());
  }


  Future<bool> onBack(BuildContext context) async {
    if(tabController.index>0){
      tabController.animateTo(0);
      homeTabCubit.onUpdateData(0);
      showToast = false;
      return false;
    }
    if(showToast == false){
      showToast = true;
      CustomToast.showSnakeBar(tr("PressAgainToExit"));
      Future.delayed(const Duration(seconds: 6)).then((value) => showToast = false);
      return false;
    }else{
      SystemNavigator.pop();
      return true;
    }
  }

}
