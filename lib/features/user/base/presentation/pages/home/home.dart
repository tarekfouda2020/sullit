part of 'home_imports.dart';

class Home extends StatefulWidget {
  final int index;

  const Home({Key? key, required this.index}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.initBottomNavigation(this, widget.index);
    controller.initUserLocation(context);
    controller.getCartItems(context);
    controller.getOffersData(context);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => controller.onBack(context),
      child: DefaultTabController(
        initialIndex: widget.index,
        length: 5,
        child: GestureDetector(
          onTap: () =>  FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            key: controller.scaffoldKey,
            extendBody: true,
            // drawer: BuildDrawer(controller: controller),
            body: TabBarView(
              controller: controller.tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: controller.pages(),
            ),
            bottomNavigationBar: BuildBottomNavBar(controller: controller),
            floatingActionButton: const CartButtonWidget(),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          ),
        ),
      ),
    );
  }
}
