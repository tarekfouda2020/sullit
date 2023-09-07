// ignore_for_file: use_build_context_synchronously

part of 'return_orders_imports.dart';

class ReturnOrdersController {
  final PagingController<int, Orders> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;

  ReturnOrdersController() {
    pagingController.addPageRequestListener((pageKey) {
      getReturnOrders(pageKey, refresh: false);
      getReturnOrders(pageKey);
    });
  }

  Future<void> getReturnOrders(int page, {bool refresh = true}) async {
    var params = _historyParams(page, refresh);
    var data = await GetReturnOrders().call(params);
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

  void cancelOrder(Orders model) async {
    getIt<LoadingHelper>().showLoadingDialog();
    var result = await CancelOrder().call(model.id);
    if (result.isNotEmpty) {
      CustomToast.showSimpleToast(msg: result);
      model.availableCancelOrder = false;
      int index =
          pagingController.itemList!.indexWhere((e) => e.id == model.id);
      pagingController.itemList![index] = model;
      var data = pagingController.itemList;
      pagingController.itemList = [];
      pagingController.itemList = data;
    }
    EasyLoading.dismiss();
  }

  Future<void> downloadInvoice(int id) async {
    await FileHelper().downloadFile(url: ApiNames.downloadInvoice(id));
  }

  void onOpenHistory(Orders orderModel) {
    orderModel.selected = !orderModel.selected;
    int index =
        pagingController.itemList!.indexWhere((e) => e.id == orderModel.id);
    pagingController.itemList![index] = orderModel;
    var data = pagingController.itemList;
    pagingController.itemList = [];
    pagingController.itemList = data;
  }

  GenericPaginateParams _historyParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }
}
