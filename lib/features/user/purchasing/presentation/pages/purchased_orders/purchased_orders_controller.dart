
part of 'purchased_orders_imports.dart';

class PurchasedOrdersController{

  final PagingController<int, Orders> pagingController =
  PagingController(firstPageKey: 1);
  int pageSize = 12;

  PurchasedOrdersController() {
    getPurchasingHistory(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
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


  Future<void> routeToOrderDetails(BuildContext context,Orders order)async{
    var result = await AutoRouter.of(context).push(OrderDetailsPageRoute(isReturnedOrder: false,order: order));
    if(result== true){
      getPurchasingHistory(1);
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