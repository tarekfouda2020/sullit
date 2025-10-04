part of 'on_sale_imports.dart';

class OnSaleController {
  final GenericBloc<List<Product>> onSaleCubit = GenericBloc([]);

  OnSaleController() {
    getOnSale();
  }

  void getOnSale({bool refresh = true}) async {
    var result = await GetOnSale().call(refresh);
    onSaleCubit.onUpdateData(result);
  }

  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist!;
    onSaleCubit.onUpdateData(onSaleCubit.state.data);
  }
}
