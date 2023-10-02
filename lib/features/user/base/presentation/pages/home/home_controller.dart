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

  List<IconData> tabs = [
    Icons.home,
    Icons.list,
    Icons.notifications,
    Icons.account_circle
  ];

  List<String> tabsText (BuildContext context) => [
    tr('home', context : context),
    tr('categories', context: context),
    tr('notifications', context: context),
    tr("account", context: context),
  ];

  void setUserLang(BuildContext context, String lang) async {
    print(">>>>>$lang");
    getIt<Utilities>().changeLanguage(lang, context);
    Phoenix.rebirth(context);
  }

  void showLangBottomSheet(BuildContext context, HomeController controller) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      backgroundColor: context.colors.white,
      context: context,
      builder: (context) => BuildLangBottomSheet(
        controller: controller,
      ),
    );
  }

  void initBottomNavigation(TickerProvider ticker, int index) {
    tabController =
        TabController(length: 4, vsync: ticker, initialIndex: index);
    tabController.animateTo(index);
    homeTabCubit.onUpdateData(index);
  }

  void animateTabsPages(int index, BuildContext context) {
    if (index != homeTabCubit.state.data) {
      homeTabCubit.onUpdateData(index);
      tabController.animateTo(index);
    }
  }

  void checkAuth(BuildContext context) {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (auth) {
      getIt<AuthHelper>().onLogOut(context);
    } else {
      AutoRouter.of(context).push(const LoginRoute());
    }
  }

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }
}
