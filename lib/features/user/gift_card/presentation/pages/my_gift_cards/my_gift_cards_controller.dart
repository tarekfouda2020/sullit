part of 'my_gift_cards_imports.dart';

class MyGiftCardsController {
  final PagingController<int, GiftCardDomainModel> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;

  MyGiftCardsController() {
    pagingController.addPageRequestListener((pageKey) {
      getMyGiftCards(pageKey, refresh: false);
      getMyGiftCards(pageKey);
    });
  }

  Future<void> getMyGiftCards(int page, {bool refresh = true}) async {
    var params = _paginateParams(page, refresh);
    var data = await GetUserGiftCards()(params);
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

  void routeToCardDetails(BuildContext context, GiftCardDomainModel model) {
    if (model.isExpired == true) {
      CustomToast.showSimpleToast(msg: tr("giftCardExpired"));
      return;
    }
    AutoRouter.of(context)
        .push(GiftCardDetailsRoute(isMyGiftCard: true, giftCardId: model.id));
  }

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }
}
