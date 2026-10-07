part of 'price_comparison_imports.dart';

class PriceComparisonController {
  final GenericBloc<PriceFinderResult?> priceResultBloc = GenericBloc<PriceFinderResult?>(null);

  Future<void> getPriceResults(int id) async {
    final result = await PriceSearchResult().call(id);
    priceResultBloc.onUpdateData(result);
  }
}
