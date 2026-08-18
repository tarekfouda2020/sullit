part of 'shareholder_offers_imports.dart';

class ShareholderOffersController {
  final TextEditingController searchFieldCtr = TextEditingController();

  final PagingController<int, ProductCard> shareholderOffersPagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 10;
  int currentPage = 1;

  ShareholderOffersController() {
    getShareholderProducts(1, refresh: false);
    shareholderOffersPagingController.addPageRequestListener((pageKey) {
      getShareholderProducts(pageKey);
    });
  }

  Future<void> getShareholderProducts(int page, {bool refresh = true}) async {
    var params = _shareHolderOffers(refresh, page);
    var result = await GetShareholderProducts().call(params);

    var isLastPage = result.length < pageSize;
    if (page == 1) {
      shareholderOffersPagingController.itemList = [];
    }
    if (isLastPage) {
      shareholderOffersPagingController.appendLastPage(result);
    } else {
      final nextPageKey = page + 1;
      currentPage = nextPageKey;
      shareholderOffersPagingController.appendPage(result, nextPageKey);
    }
  }

  GenericPaginateParams _shareholderOffersParams(
      bool refresh, int currentPage) {
    return GenericPaginateParams(
        pageSize: pageSize, refresh: refresh, currentPage: currentPage);
  }

  void onChangeFav(ProductCard item) {
    item.isWishlist = !item.isWishlist!;
    // Refresh to update UI state - though PagingController might need manual list update trigger
    // Similar to brand_details_controller reference
    if (shareholderOffersPagingController.itemList != null) {
      int index = shareholderOffersPagingController.itemList!
          .indexWhere((e) => e.id == item.id);
      if (index != -1) {
        shareholderOffersPagingController.itemList![index] = item;
        // Trigger generic update if needed or force rebuild logic
        // For PagingController, rebuilding the item or set state in widget is often needed
        // Assuming the parent widget handles rebuilding via PagingController or we just update the list reference to force check
        var data = shareholderOffersPagingController.itemList;
        shareholderOffersPagingController.itemList = [...?data];
      }
    }
  }

  OffersParamsWidget _shareHolderOffers(bool refresh, int currentPage) {
    return OffersParamsWidget(
        paginateParams: _shareholderOffersParams(refresh, currentPage),
        isVipProducts: true,
        keyword: searchFieldCtr.text);
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
    shareholderOffersPagingController.refresh();
    getShareholderProducts(1);
  }
}
