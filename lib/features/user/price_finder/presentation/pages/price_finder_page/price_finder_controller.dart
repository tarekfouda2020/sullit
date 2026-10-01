part of 'price_finder_imports.dart';

class PriceFinderController {
  final TextEditingController searchController = TextEditingController();

  final String deliveryLocation = 'Al Mushrif, Abu Dhabi';

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

  void dispose() {
    searchController.dispose();
  }
}
