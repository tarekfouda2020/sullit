
part of 'my_orders_imports.dart';

class MyOrdersController{

  final PagingController<int, Orders> pagingController =
  PagingController(firstPageKey: 1);
  int pageSize = 12;

  MyOrdersController() {
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



  void cancelOrder(BuildContext context,Orders model) async {
    getIt<LoadingHelper>().showLoadingDialog();
    var result = await CancelOrder().call(model.id);
    if (result.isNotEmpty) {
      CustomToast.showSimpleToast(msg: result);
      model.availableCancelOrder = false;
      getIt<LoadingHelper>().dismissDialog();
      AutoRouter.of(context).pop();
    }else{
      CustomToast.showSimpleToast(msg: tr("tryAgain"));
    }
    getIt<LoadingHelper>().dismissDialog();
  }


  void onPayOrder(BuildContext context,Orders model) async {
    var result = await PayOrder().call(model.id);
    if (result.isNotEmpty && model.isPaymentOnline) {
      await AutoRouter.of(context).push(
        PaymentRoute(transactionUrl: result),
      );
    }
  }

  Future<void> reOrder(BuildContext context,int orderId) async {
    String result = await OrderAgain()(orderId);
    if(result.isNotEmpty){
      CustomToast.showSimpleToast(msg: result,type: ToastType.success);
      AutoRouter.of(context).pop();
      AutoRouter.of(context).push(const CartRoute());
    }else{
      CustomToast.showSimpleToast(msg: tr("tryAgain"),type: ToastType.error);
    }

  }


}