part of 'search_price_result_imports.dart';

class SearchPriceController {
  final TextEditingController searchFieldCtr = TextEditingController();

  final GenericBloc<List<ProductCard>> productsBloc = GenericBloc([]);
  final GenericBloc<String> searchKeyBloc = GenericBloc('');
  final GenericBloc<bool> showClearIcon = GenericBloc(false);
  final GenericBloc<int?> savedComparisonIdBloc = GenericBloc<int?>(null);

  final PagingController<int, ProductCard> pagingController = PagingController(firstPageKey: 1);

  final String? _initSearchKey;

  SearchPriceController(this._initSearchKey) {
    if (_initSearchKey != null) {
      searchFieldCtr.text = _initSearchKey!;
    }
    getPopularProducts(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getPopularProducts(pageKey);
    });
    syncSavedComparisonId();
  }

  void syncSavedComparisonId() {
    final comparisonId = _readSavedComparisonId();
    if (savedComparisonIdBloc.state.data == comparisonId) return;
    savedComparisonIdBloc.onUpdateData(comparisonId);
  }

  int? _readSavedComparisonId() {
    final savedId = GlobalState.instance.get(GlobalStateKeys.currentComparisonsId);
    if (savedId is int) return savedId;
    if (savedId is num) return savedId.toInt();
    return null;
  }

  Future<void> getPopularProducts(int currentPage, {bool refresh = true}) async {
    try {
      final params = productsParams(currentPage, refresh);
      final data = await GetCategoryProducts().call(params);

      final isLastPage = data.length < AppConstants.instance.paginationLimit;
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
  }

  void onPressSearch(BuildContext context) {
    FocusScope.of(context).unfocus();
    callProductsSearch();
  }

  void clearSearchField() {
    searchFieldCtr.clear();
    showClearIcon.onUpdateData(false);
    pagingController.refresh();
  }

  Future<void> refresh() async {
    syncSavedComparisonId();
    await getPopularProducts(1);
  }

  Future<void> resumeActiveComparison(BuildContext context) async {
    final comparisonId = _readSavedComparisonId();
    if (comparisonId == null) {
      syncSavedComparisonId();
      return;
    }
    getIt<LoadingHelper>().showLoadingDialog();
    final comparison = await GetPriceComparison().call(comparisonId);
    getIt<LoadingHelper>().dismissDialog();
    if (comparison == null || !context.mounted) return;
    if (comparison.isCompleted) {
      GlobalState.instance.remove(GlobalStateKeys.currentComparisonsId);
      CustomToast.showSimpleToast(
        msg: "Your Price Comparison is Completed",
        type: ToastType.success,
      );
      await AutoRouter.of(context).push(
        PriceComparisonPageRoute(id: comparison.id),
      );
    } else {
      await AutoRouter.of(context).push(
        PriceFinderWorkingRoute(
          priceComparisonsId: comparison.id,
          initData: comparison,
        ),
      );
    }
    syncSavedComparisonId();
  }

  bool _hasActiveComparison() {
    return _readSavedComparisonId() != null;
  }

  Future<void> fetchProductPrice(BuildContext context, int id) async {
    if (_hasActiveComparison()) {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (dialogContext) {
          return NewComparisonConfirmDialogWidget(
            onConfirm: () => Navigator.of(dialogContext).pop(true),
          );
        },
      );
      if (confirmed != true || !context.mounted) return;
      GlobalState.instance.remove(GlobalStateKeys.currentComparisonsId);
      syncSavedComparisonId();
    }

    if (!context.mounted) return;

    CreatePriceComparisonParams params = CreatePriceComparisonParams(productId: id);
    var comparison = await CreatePriceComparison().call(params);
    if (comparison == null || !context.mounted) return;

    GlobalState.instance.set(GlobalStateKeys.currentComparisonsId, comparison.id);

    await AutoRouter.of(context).push(
      PriceFinderWorkingRoute(
        priceComparisonsId: comparison.id,
        initData: comparison,
      ),
    );
    syncSavedComparisonId();
  }

  void dispose() {
    searchFieldCtr.dispose();
    productsBloc.close();
    searchKeyBloc.close();
    showClearIcon.close();
    savedComparisonIdBloc.close();
    pagingController.dispose();
  }
}
