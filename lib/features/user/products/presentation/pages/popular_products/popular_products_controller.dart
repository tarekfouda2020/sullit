part of 'popular_products_imports.dart';

class PopularProductCardsController {
  final PagingController<int, ProductCard> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;

  PopularProductCardsController(int id) {
    pagingController.addPageRequestListener((pageKey) {
      getPopularProductCards(id, pageKey, refresh: false);
      getPopularProductCards(id, pageKey);
    });
  }

  Future<void> getPopularProductCards(int id, int currentPage,
      {bool refresh = true}) async {
    var params = _popularProductCardsParams(id, currentPage, refresh);
    var data = await GetPopularProducts().call(params);
    final isLastPage = data.length < pageSize;
    if (currentPage == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      final nextPageKey = currentPage + 1;
      pagingController.appendPage(data, nextPageKey);
    }
  }

  PopularProductsParams _popularProductCardsParams(int id, int page, bool refresh) {
    return PopularProductsParams(
      id: id,
      currentPage: page,
      pageSize: pageSize,
      refresh: refresh,
    );
  }
}
