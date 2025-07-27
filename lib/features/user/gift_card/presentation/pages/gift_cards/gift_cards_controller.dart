part of 'gift_cards_imports.dart';

class GiftCardsController{

  final PagingController<int, GiftCardDomainModel> pagingController = PagingController(firstPageKey: 1);
  int pageSize = 12;


  GiftCardsController(){
    pagingController.addPageRequestListener((pageKey) {
      getGiftCards(pageKey, refresh: false);
      getGiftCards(pageKey);
    });
  }

  void routeRoMyGiftCard(BuildContext context){
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

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }



}