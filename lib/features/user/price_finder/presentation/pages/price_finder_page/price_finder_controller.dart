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

  void onSearch(BuildContext context, String value) {}

  void onScanBarcode(BuildContext context) {
    AutoRouter.of(context).push(
      const SearchScannerPageRoute(),
    );
  }

  void onPopularTap(BuildContext context, String name) {
    searchController.text = name;
    onSearch(context, name);
  }

  void onChangeLocation(BuildContext context) {}
}
