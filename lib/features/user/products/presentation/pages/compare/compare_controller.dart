part of 'compare_imports.dart';

class CompareController {
  final GenericBloc<List<Product>> productsBloc = GenericBloc([]);

  // CompareController(BuildContext context) {
  //   getComparedProducts(context);
  // }

  Future<void> getComparedProducts(BuildContext context,
      {bool refresh = true}) async {
    var result = await getIt<ComparedProductsDb>().getItems();
    productsBloc.onUpdateData(
      result.map((e) => Product.fromJson(json.decode(e.product!))).toList(),
    );
  }

  void onFavChanged(Product model) {
    model.isWishlist = !model.isWishlist!;
    productsBloc.onUpdateData(productsBloc.state.data);
  }
}
