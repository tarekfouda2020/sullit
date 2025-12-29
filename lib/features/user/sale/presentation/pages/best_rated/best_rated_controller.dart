part of 'best_rated_imports.dart';

class BestRatedController {
  final TextEditingController searchFieldCtr = TextEditingController();

  final PagingController<int, Product> bestRatedPagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 10;

  BestRatedController() {
    getBestRated(1, refresh: false);
    bestRatedPagingController.addPageRequestListener((pageKey) {
      getBestRated(pageKey);
    });
  }

  Future<void> getBestRated(int page, {bool refresh = true}) async {
    var params = _bestRatedOffers(refresh, page);
    var result = await GetBestRated().call(params);

    var isLastPage = result.length < pageSize;
    if (page == 1) {
      bestRatedPagingController.itemList = [];
    }
    if (isLastPage) {
      bestRatedPagingController.appendLastPage(result);
    } else {
      final nextPageKey = page + 1;
      bestRatedPagingController.appendPage(result, nextPageKey);
    }
  }

  GenericPaginateParams _bestRatedPaginateParams(
      bool refresh, int currentPage) {
    return GenericPaginateParams(
      pageSize: pageSize,
      refresh: refresh,
      currentPage: currentPage,
    );
  }

  OffersParamsWidget _bestRatedOffers(bool refresh, int currentPage) {
    return OffersParamsWidget(
        paginateParams: _bestRatedPaginateParams(refresh, currentPage));
  }

  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist!;
    if (bestRatedPagingController.itemList != null) {
      int index = bestRatedPagingController.itemList!
          .indexWhere((e) => e.id == item.id);
      if (index != -1) {
        bestRatedPagingController.itemList![index] = item;
        var data = bestRatedPagingController.itemList;
        bestRatedPagingController.itemList = [...?data];
      }
    }
  }

  void onPressSearch(BuildContext context) {
    FocusScope.of(context).unfocus();
    callProductsSearch();
  }

  void whileWriting(String value) {
    DebounceHelper.instance.startSearch(
      value: value,
      onSearch: (val) => callProductsSearch(),
    );
  }

  void callProductsSearch() {
    bestRatedPagingController.refresh();
    getBestRated(1);
  }
}
