part of 'my_vouchers_imports.dart';

class MyVouchersController {
  late TabController tabController;

  void initBottomNavigation(TickerProvider ticker) {
    tabController = TabController(length: 3, vsync: ticker, initialIndex: 0);
  }

  void changeTab(int index) {
    if (tabController.index != index) {
      tabController.animateTo(index);
    }
  }
}
