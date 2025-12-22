part of 'coupons_imports.dart';

class CouponsController {

  late final HomeController homeController;
  late TabController tabController;
  final PagingController<int, Coupon> pagingController = PagingController(firstPageKey: 1);

  int pageSize = 12;


  List<Widget> pages(BuildContext context) {
    final isShareHolder = context.read<UserCubit>().state.model?.isShareHolder == true;

    return [
      if (!isShareHolder) const ProOffers(),
      if (isShareHolder) const ShareholderOffers(),
      const NewArrival(),
      OnSale(homeController: homeController),
      const BestRated(),
    ];
  }


  void initBottomNavigation(TickerProvider ticker, int index,BuildContext context) {
    tabController = TabController(length: pages(context).length, vsync: ticker, initialIndex: index);
  }

  // CouponsController() {
  //   pagingController.addPageRequestListener((pageKey) {
  //     getCoupons(pageKey, refresh: false);
  //     getCoupons(pageKey);
  //   });
  // }


  void changeTab(int index){
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
