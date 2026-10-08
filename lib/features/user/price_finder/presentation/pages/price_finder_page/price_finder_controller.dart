part of 'price_finder_imports.dart';

class PriceFinderController {
  final TextEditingController searchController = TextEditingController();
  final GenericBloc<List<SearchQuery>> popularSearchesBloc = GenericBloc([]);
  final GenericBloc<bool> popularLoadingBloc = GenericBloc(true);

  Future<void> getPopularSearches() async {
    popularLoadingBloc.onUpdateData(true);
    final data = await PopularSearches().call(NoParams());
    if (popularSearchesBloc.isClosed) return;
    popularSearchesBloc.onUpdateData(data);
    popularLoadingBloc.onUpdateData(false);
  }

  void dispose() {
    searchController.dispose();
    popularSearchesBloc.close();
    popularLoadingBloc.close();
  }

  Future<void> fetchProductPrice(BuildContext context, int id) async {
    CreatePriceComparisonParams params = CreatePriceComparisonParams(productId: id);
    var comparison = await CreatePriceComparison().call(params);
    if (comparison == null || !context.mounted) return;

    AutoRouter.of(context).push(
      PriceFinderWorkingRoute(
        priceComparisonsId: comparison.id,
        initData: comparison,
      ),
    );
  }

  void onScanBarcode(BuildContext context) {
    AutoRouter.of(context).push(
      const SearchScannerPageRoute(),
    );
  }

  void onPopularTap(BuildContext context, SearchQuery model) {
    searchController.text = model.query;
    AutoRouter.of(context).push(
      SearchPriceResultRoute(searchKey: searchController.text),
    );
  }

  void onChangeLocation(BuildContext context) {}
}
