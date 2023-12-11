part of 'notifications_imports.dart';

class NotificationsController {
  final PagingController<int, NotificationDomainModel> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;

  NotificationsController() {
    pagingController.addPageRequestListener((pageKey) {
      getNotifications(pageKey, refresh: false);
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

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }
}
