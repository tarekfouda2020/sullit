part of 'sale_details_imports.dart';

class SaleDetailsController {
  final GenericBloc<SaleDetailsDomainModel?> saleDetailsBloc =
      GenericBloc(null);

  SaleDetailsController(int saleId) {
    getSaleDetails(saleId);
  }

  Future<void> getSaleDetails(int saleId) async {
    return await GetAllDealsProducts().call(saleId).then(
          (value) => saleDetailsBloc.onUpdateData(value),
        );
  }

  void onFavChanged(Product model) {
    model.isWishlist = !model.isWishlist!;
    saleDetailsBloc.onUpdateData(saleDetailsBloc.state.data);
  }
}
