part of 'search_price_result_imports.dart';

class SearchPriceController {
  final TextEditingController searchFieldCtr = TextEditingController();

  final GenericBloc<List<ProductCard>> productsBloc = GenericBloc([]);
  final GenericBloc<String> searchKeyBloc = GenericBloc('');
  final GenericBloc<bool> showClearIcon = GenericBloc(false);

  final PagingController<int, ProductCard> pagingController = PagingController(firstPageKey: 1);


  SearchPriceController() {
    pagingController.addPageRequestListener((pageKey) {
      getPopularProducts(pageKey);
    });
  }

  Future<void> getPopularProducts(int currentPage, {bool refresh = true}) async {
    final params = productsParams(currentPage, refresh);

    final data = await GetCategoryProducts().call(params);

    final isLastPage = data.length < AppConstants.instance.paginationLimit;

    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      pagingController.appendPage(
        data,
        currentPage + 1,
      );
    }

    productsBloc.onUpdateData(
      pagingController.itemList ?? [],
    );


    searchKeyBloc.onUpdateData(
      searchFieldCtr.text.trim(),
    );
  }

  SearchProductsParams productsParams(int page, bool refresh) {
    return SearchProductsParams(
      searchKey: searchFieldCtr.text.trim(),
      refresh: refresh,
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

  void callProductsSearch() {
    pagingController.refresh();
    getPopularProducts(1);
  }

  void onPressSearch(BuildContext context) {
    FocusScope.of(context).unfocus();
    callProductsSearch();
  }

  void clearSearchField() {
    searchFieldCtr.clear();

    showClearIcon.onUpdateData(false);

    pagingController.refresh();
    getPopularProducts(1);
  }

  Future<void> refresh() async {
    await getPopularProducts(1);
  }


  Future<void> fetchProductPrice(BuildContext context, int id) async {
    CreatePriceComparisonParams params = CreatePriceComparisonParams(productId: id);
    var comparison = await CreatePriceComparison().call(params);
    if (comparison == null || !context.mounted) return;

    AutoRouter.of(context).push( PriceFinderWorkingRoute(priceComparisonsId: comparison.id));
  }



  void dispose() {
    searchFieldCtr.dispose();

    productsBloc.close();
    searchKeyBloc.close();
    showClearIcon.close();

    pagingController.dispose();
  }
}
