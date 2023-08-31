part of 'brand_details_imports.dart';

class BrandDetailsController {
  final GenericBloc<List<Product>> productsBloc = GenericBloc([]);

  // BrandDetailsController(int brandId) {
  //   // getBrandProducts(brandId, refresh: false);
  //   // getBrandProducts(brandId);
  // }


  void getBrandProducts(BuildContext context, int brandId,
      {bool refresh = true}) async {
    var params = _brandDetailsParams(refresh, brandId);
    return await GetBrandProducts().call(params).then(
          (value) => productsBloc.onUpdateData(value),
        );
  }

  BrandDetailsParams _brandDetailsParams(bool refresh, int brandId) {
    return BrandDetailsParams(refresh: refresh, brandId: brandId);
  }

  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist!;
    productsBloc.onUpdateData(productsBloc.state.data);
  }
}
