part of 'new_arrival_imports.dart';

class NewArrivalController {
  final TextEditingController searchFieldCtr = TextEditingController();

  final PagingController<int, ProductCard> arrivalPagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 10;
  int currentPage = 1;

  NewArrivalController() {
    getArrival(1, refresh: false);
    arrivalPagingController.addPageRequestListener((pageKey) {
      getArrival(pageKey);
    });
  }

  Future<void> getArrival(int page, {bool refresh = true}) async {
    var params = _arrivalOffers(refresh, page);
    var result = await GetNewArrival().call(params);

    var isLastPage = result.length < pageSize;
    if (page == 1) {
      arrivalPagingController.itemList = [];
    }
    if (isLastPage) {
      arrivalPagingController.appendLastPage(result);
    } else {
      final nextPageKey = page + 1;
      currentPage = nextPageKey;
      arrivalPagingController.appendPage(result, nextPageKey);
    }
  }

  GenericPaginateParams _arrivalParams(bool refresh, int currentPage) {
    return GenericPaginateParams(
      pageSize: pageSize,
      refresh: refresh,
      currentPage: currentPage,
    );
  }

  OffersParamsWidget _arrivalOffers(bool refresh, int currentPage) {
    return OffersParamsWidget(
        paginateParams: _arrivalParams(refresh, currentPage),
        keyword: searchFieldCtr.text);
  }

  void onChangeFav(ProductCard item) {
    item.isWishlist = !item.isWishlist!;
    if (arrivalPagingController.itemList != null) {
      int index =
          arrivalPagingController.itemList!.indexWhere((e) => e.id == item.id);
      if (index != -1) {
        arrivalPagingController.itemList![index] = item;
        var data = arrivalPagingController.itemList;
        arrivalPagingController.itemList = [...?data];
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
    arrivalPagingController.refresh();
    getArrival(1);
  }
}
