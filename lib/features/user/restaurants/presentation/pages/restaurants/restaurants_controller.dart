part of 'restaurants_imports.dart';

class RestaurantController {
  final TextEditingController searchController = TextEditingController();
  final PagingController<int, ShopCardDomainModel> pagingController = PagingController(firstPageKey: 1);
  final GenericBloc<bool> showClearIcon = GenericBloc<bool>(false);

  RestaurantController() {
    getRestaurants(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getRestaurants(pageKey);
    });
  }

  Future<void> getRestaurants(int page, {bool refresh = true}) async {
    var params = _buildShopsParams(refresh, page);
    var data = await GetPharmacies().call(params);
    final isLastPage = data.length < AppConstants.instance.paginationLimit;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      pagingController.appendPage(data, page + 1);
    }
  }

  ShopsParams _buildShopsParams(bool refresh, int page) {
    SearchResultParams searchParams = _searchParams(page, refresh);
    return ShopsParams(
      params: searchParams,
      type: ShopTypeEnum.restaurant,
    );
  }

  SearchResultParams _searchParams(int page, bool refresh) {
    var paginateParams = _genericPaginateParams(page, refresh);
    return SearchResultParams(
      searchTxt: searchController.text,
      paginateParams: paginateParams,
    );
  }

  GenericPaginateParams _genericPaginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: AppConstants.instance.paginationLimit,
    );
  }

  void whileWriting(String value) {
    showClearIcon.onUpdateData(value.isNotEmpty);
    DebounceHelper.instance.startSearch(
      value: value,
      onSearch: (val) {
        pagingController.refresh();
        getRestaurants(1);
      },
    );
  }

  void clearSearchField() {
    searchController.clear();
    showClearIcon.onUpdateData(false);
    pagingController.refresh();
    getRestaurants(1);
  }

  void dispose() {
    searchController.dispose();
    showClearIcon.close();
    pagingController.dispose();
  }

}
