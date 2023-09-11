part of 'home_imports.dart';

class HomeController {
  final GenericBloc<int> homeTabCubit = GenericBloc(0);
  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;
  final GenericBloc<bool> visibleSearch = GenericBloc(false);
  final TextEditingController searchController=TextEditingController();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List<IconData> tabs = [
    Icons.home,
    Icons.list,
    Icons.notifications,
    Icons.account_circle
  ];

  List<String> tabsText = [
    "Home",
    "Categories",
    "Notifications",
    "Account",
  ];

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

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }
}
