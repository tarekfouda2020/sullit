part of 'search_imports.dart';

class SearchPriceController {
  final TextEditingController searchFieldCtr = TextEditingController();

  final GenericBloc<List<ProductCard>> productsBloc = GenericBloc([]);
  final GenericBloc<String> searchKeyBloc = GenericBloc('');
  final GenericBloc<bool> showClearIcon = GenericBloc(false);

  final PagingController<int, ProductCard> pagingController = PagingController(firstPageKey: 1);

  int pageSize = 10;

  SearchPriceController() {
    pagingController.addPageRequestListener((pageKey) {
      getPopularProducts(pageKey);
    });
  }

  Future<void> getPopularProducts(int currentPage, {bool refresh = true}) async {
    try {
      final params = productsParams(currentPage, refresh);
      final data = await GetCategoryProducts().call(params);

      final isLastPage = data.length < pageSize;
      if (isLastPage) {
        pagingController.appendLastPage(data);
      } else {
        pagingController.appendPage(data, currentPage + 1);
      }

      productsBloc.onUpdateData(pagingController.itemList ?? []);
      searchKeyBloc.onUpdateData(searchFieldCtr.text.trim());
    } catch (e) {
      pagingController.error = e;
    }
  }

  void callProductsSearch() {
    pagingController.refresh();
  }

  void clearSearchField() {
    searchFieldCtr.clear();
    showClearIcon.onUpdateData(false);
    pagingController.refresh();
  }

  Future<void> refresh() async {
    pagingController.refresh();
  }

  SearchProductsParams productsParams(
    int page,
    bool refresh,
  ) {
    return SearchProductsParams(
      searchKey: searchFieldCtr.text.trim(),
      refresh: refresh,
      pageSize: pageSize,
      currentPage: page,
    );
  }

  void whileWriting(String value) {
    DebounceHelper.instance.startSearch(
      value: value,
      onSearch: (val) {
        callProductsSearch();
      },
    );

    if (value.isNotEmpty) {
      showClearIcon.onUpdateData(true);
    } else {
      showClearIcon.onUpdateData(false);
    }
  }

  void onPressSearch(BuildContext context) {
    FocusScope.of(context).unfocus();
    callProductsSearch();
  }

  void dispose() {
    searchFieldCtr.dispose();

    productsBloc.close();
    searchKeyBloc.close();
    showClearIcon.close();

    pagingController.dispose();
  }
}
