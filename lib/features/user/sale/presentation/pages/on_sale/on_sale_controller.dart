part of 'on_sale_imports.dart';

class OnSaleController {
  final TextEditingController searchFieldCtr = TextEditingController();

  final PagingController<int, Product> onSalePagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 10;
  int currentPage = 1;

  OnSaleController() {
    getOnSale(1, refresh: false);
    onSalePagingController.addPageRequestListener((pageKey) {
      getOnSale(pageKey);
    });
  }

  Future<void> getOnSale(int page, {bool refresh = true}) async {
    var params = _onSaleOffers(refresh, page);
    var result = await GetOnSale().call(params);

    var isLastPage = result.length < pageSize;
    if (page == 1) {
      onSalePagingController.itemList = [];
    }
    if (isLastPage) {
      onSalePagingController.appendLastPage(result);
    } else {
      final nextPageKey = page + 1;
      currentPage = nextPageKey;
      onSalePagingController.appendPage(result, nextPageKey);
    }
  }

  GenericPaginateParams _onSaleParams(bool refresh, int currentPage) {
    return GenericPaginateParams(
      pageSize: pageSize,
      refresh: refresh,
      currentPage: currentPage,
    );
  }

  OffersParamsWidget _onSaleOffers(bool refresh, int currentPage) {
    return OffersParamsWidget(
        paginateParams: _onSaleParams(refresh, currentPage),
        keyword: searchFieldCtr.text
    );
  }

  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist!;
    if (onSalePagingController.itemList != null) {
      int index =
          onSalePagingController.itemList!.indexWhere((e) => e.id == item.id);
      if (index != -1) {
        onSalePagingController.itemList![index] = item;
        var data = onSalePagingController.itemList;
        onSalePagingController.itemList = [...?data];
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
    onSalePagingController.refresh();
    getOnSale(1);
  }
}
