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
    controller.initBottomNavigation(this, widget.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.onBackPressed,
      child: DefaultTabController(
        initialIndex: widget.index,
        length: 4,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: controller.scaffoldKey,
            extendBody: true,
            drawer: BuildDrawer(controller: controller),
            body: TabBarView(
              controller: controller.tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                HomeMain(homeController: controller),
                Categories(homeController: controller),
                Coupons(homeController: controller),
                More(homeController: controller),
              ],
            ),
            // floatingActionButton: FloatingActionButton(
            //   backgroundColor: context.colors.primary,
            //   onPressed: () => AutoRouter.of(context).push(const CartRoute()),
            //   child: const Icon(Icons.shopping_cart),
            // ),
            // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BuildBottomNavBar(controller: controller),
          ),
        ),
      ),
    );
  }
}
