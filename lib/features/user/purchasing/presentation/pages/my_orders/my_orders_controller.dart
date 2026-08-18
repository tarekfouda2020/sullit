part of 'my_orders_imports.dart';

class MyOrdersController {
  final PagingController<int, OrderCardDomainModel> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;

  final bool isPharmacy;

  MyOrdersController({this.isPharmacy = false}) {
    getPurchasingHistory(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getPurchasingHistory(pageKey);
    });
  }

  Future<void> getPurchasingHistory(int page, {bool refresh = true}) async {
    var params = _myOrdersParams(page, refresh);
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

  Future<void> routeToOrderDetails(BuildContext context, OrderCardDomainModel order) async {
    if(order.isPharmacy){
     var   result =  await AutoRouter.of(context).push(PharmacyOrderDetailsRoute(id: order.id));
     if (result == true) {
       getPurchasingHistory(1);
     }
    }else{
     var result = await AutoRouter.of(context)
          .push(OrderDetailsPageRoute(isReturnedOrder: false, id: order.id));
     if (result == true) {
       getPurchasingHistory(1);
     }
    }

  }



  MyOrdersParams _myOrdersParams(int page, bool refresh){
    return MyOrdersParams(
      paginateParams: _historyParams(page, refresh),
      type: isPharmacy ? OrderTypeEnum.pharmacy : OrderTypeEnum.general,
    );
  }



  GenericPaginateParams _historyParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }

  void cancelOrder(BuildContext ctx, OrderCardDomainModel model) async {
    showCupertinoDialog(
      context: ctx,
      builder: (context) => ConfirmCancelDialog(
        onConfirm: () async {
          Navigator.pop(context);
          getIt<LoadingHelper>().showLoadingDialog();
          var result = await CancelOrder().call(model.id);
          if (result.isNotEmpty) {
            CustomToast.showSimpleToast(msg: result, type: ToastType.success);
            model.availableCancelOrder = false;
            AutoRouter.of(ctx).pop(true);
          } else {
            CustomToast.showSimpleToast(msg: tr("tryAgain"));
          }
          getIt<LoadingHelper>().dismissDialog();
        },
      ),
    );
  }

  void onPayOrder(BuildContext context, OrderCardDomainModel model) async {
    var result = await PayOrder().call(model.id);
    if (result.isNotEmpty && model.isPaymentOnline) {
      await AutoRouter.of(context).push(
        PaymentRoute(transactionUrl: result),
      );
    }
  }

  Future<void> reOrder(BuildContext context, int orderId, bool isPharmacy, int pharamcyId,{bool prescriptionRequired = false}) async {
    if(prescriptionRequired){
      AutoRouter.of(context).pop();
      AutoRouter.of(context).push(PharmaciesListRoute(makePrescriptionOrder: true));
      return ;
    }
    String result = await OrderAgain()(orderId);
    if (result.isNotEmpty) {
      CustomToast.showSimpleToast(msg: result, type: ToastType.success);
      AutoRouter.of(context).pop();
      if(isPharmacy){
        AutoRouter.of(context).push(PharmacyCartRoute(
            pharmacyId: pharamcyId,
            fromPharmacyDetails: false
        ));
      }else{
        AutoRouter.of(context).push(CartRoute());
      }
    } else {
      // CustomToast.showSimpleToast(msg: tr("tryAgain"), type: ToastType.error);
    }
  }
}
