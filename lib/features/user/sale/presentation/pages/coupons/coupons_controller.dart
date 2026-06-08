part of 'coupons_imports.dart';

class CouponsController {
  late final HomeController homeController;
  late TabController tabController;
  final PagingController<int, Coupon> pagingController =
      PagingController(firstPageKey: 1);

  int pageSize = 12;

  List<Widget> pages(BuildContext context) {
    final isShareHolder = context.isShareHolder;

    final saleData = homeController.saleTabsData;

    bool show(List? list) {
      if (list == null) {
        return true;
      }
      return list.isNotEmpty;
    }

    return [
      if (!isShareHolder && show(saleData.vipOffers)) const ProOffers(),
      if (isShareHolder && show(saleData.shareholderOffers))
        const ShareholderOffers(),
      if (show(saleData.newArrival)) const NewArrival(),
      if (show(saleData.onSale)) OnSale(homeController: homeController),
      if (show(saleData.bestRated)) const BestRated(),
    ];
  }

  void initBottomNavigation(
      TickerProvider ticker, int index, BuildContext context) {
    tabController = TabController(
        length: pages(context).length, vsync: ticker, initialIndex: index);
  }

  // CouponsController() {
  //   pagingController.addPageRequestListener((pageKey) {
  //     getCoupons(pageKey, refresh: false);
  //     getCoupons(pageKey);
  //   });
  // }

  void changeTab(int index) {
    if (tabController.index != index) {
      tabController.animateTo(index);
    }
  }

  Future<void> getCoupons(int page, {bool refresh = true}) async {
    var params = _paginateParams(page, refresh);
    var data = await GetCoupons().call(params);
    final isLastPage = data.length < pageSize;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      pagingController.appendPage(data, nextPageKey);
    }
  }

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }
}
