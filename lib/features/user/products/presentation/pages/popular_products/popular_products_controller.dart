part of 'popular_products_imports.dart';

class PopularProductsController {
  final PagingController<int, Product> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;

  PopularProductsController(int id) {
    pagingController.addPageRequestListener((pageKey) {
      getPopularProducts(id, pageKey, refresh: false);
      getPopularProducts(id, pageKey);
    });
  }

  Future<void> getPopularProducts(int id, int currentPage,
      {bool refresh = true}) async {
    var params = _popularProductsParams(id, currentPage, refresh);
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

  PopularProductsParams _popularProductsParams(int id, int page, bool refresh) {
    return PopularProductsParams(
      id: id,
      currentPage: page,
      pageSize: pageSize,
      refresh: refresh,
    );
  }
}
