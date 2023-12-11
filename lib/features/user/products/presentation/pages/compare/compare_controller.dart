part of 'compare_imports.dart';

class CompareController {
  final GenericBloc<List<Product>> productsBloc = GenericBloc([]);

  CompareController(BuildContext context) {
    getComparedProducts(context);
  }

  Future<void> getComparedProducts(BuildContext context,
      {bool refresh = true}) async {
    var result = await getIt<ComparedProductsDb>().getItems();
    var allProducts =
        result.map((e) => Product.fromJson(json.decode(e.product!))).toList();
    productsBloc.onUpdateData(allProducts);
  }

  void onCompareChanged(Product model) {
    int index =
        productsBloc.state.data.indexWhere((element) => element.id == model.id);
    productsBloc.state.data.removeAt(index);
    productsBloc.onUpdateData(productsBloc.state.data);
  }

  void onFavChanged(Product model) {
    model.isWishlist = !model.isWishlist!;
    productsBloc.onUpdateData(productsBloc.state.data);
  }
}
