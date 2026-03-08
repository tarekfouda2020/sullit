part of 'notifications_imports.dart';

class NotificationsController {
  final PagingController<int, NotificationDomainModel> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;

  NotificationsController() {
    getNotifications(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getNotifications(pageKey);
    });
  }

  Future<void> getNotifications(int page, {bool refresh = true}) async {
    var params = _paginateParams(page, refresh);
    var data = await GetNotifications().call(params);
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



  void onPress(BuildContext context, NotificationDomainModel model){
    if(model.isShareHolderOffer){
      AutoRouter.of(context).pop(true);
      return ;
    }
    if(model.orderId != 0 && model.orderId!=null){
      AutoRouter.of(context).push(OrderSummaryRoute(orderId: model.orderId!));
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
