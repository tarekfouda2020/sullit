part of 'gift_cards_imports.dart';

class GiftCardsController {
  final PagingController<int, GiftCardDomainModel> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;

  GiftCardsController() {
    getGiftCards(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getGiftCards(pageKey);
    });
  }

  void routeRoMyGiftCard(BuildContext context) {
    AutoRouter.of(context).push(const MyGiftCardsRoute());
  }

  Future<void> getGiftCards(int page, {bool refresh = true}) async {
    var params = _paginateParams(page, refresh);
    var data = await GetGiftCardsList()(params);
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

  Future<void> routeToCardDetails(BuildContext context, int id) async {
    var result = await AutoRouter.of(context)
        .push<bool>(GiftCardDetailsRoute(isMyGiftCard: false, giftCardId: id));
    if (result == true) {
      getGiftCards(1, refresh: true);
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
