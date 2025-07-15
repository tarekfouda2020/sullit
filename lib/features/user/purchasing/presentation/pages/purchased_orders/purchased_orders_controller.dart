
part of 'purchased_orders_imports.dart';

class PurchasedOrdersController{

  final PagingController<int, Orders> pagingController =
  PagingController(firstPageKey: 1);
  int pageSize = 12;

  PurchasedOrdersController() {
    pagingController.addPageRequestListener((pageKey) {
      getPurchasingHistory(pageKey, refresh: false);
      getPurchasingHistory(pageKey);
    });
  }

  Future<void> getPurchasingHistory(int page, {bool refresh = true}) async {
    var params = _historyParams(page, refresh);
    var data = await GetPurchasingHistory().call(params);
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



  GenericPaginateParams _historyParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }

}