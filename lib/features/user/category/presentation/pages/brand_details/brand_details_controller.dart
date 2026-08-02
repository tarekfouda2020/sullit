part of 'brand_details_imports.dart';

class BrandDetailsController {
  final PagingController<int, ProductCard> productsPagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 10;

  BrandDetailsController(BuildContext context, int brandId) {
    getBrandProducts(context, brandId, 1, refresh: false);
    productsPagingController.addPageRequestListener((pageKey) {
      getBrandProducts(context, brandId, pageKey);
    });
  }

  Future<void> getBrandProducts(BuildContext context, int brandId, int page,
      {bool refresh = true}) async {
    var params = _brandDetailsParams(refresh, brandId, page);
    var data = await GetBrandProducts().call(params);
    var isLastPage = data.length < pageSize;
    if (page == 1) {
      productsPagingController.itemList = [];
    }
    if (isLastPage) {
      productsPagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      productsPagingController.appendPage(data, nextPageKey);
    }
  }

  BrandDetailsParams _brandDetailsParams(bool refresh, int brandId, int page) {
    return BrandDetailsParams(
      refresh: refresh,
      brandId: brandId,
      paginateParams: _paginateParams(refresh, page),
    );
  }

  GenericPaginateParams _paginateParams(bool refresh, int currentPage) {
    return GenericPaginateParams(
        pageSize: pageSize, refresh: refresh, currentPage: currentPage);
  }

  void onChangeFav(ProductCard item) {
    item.isWishlist = !item.isWishlist;
    int index =
        productsPagingController.itemList!.indexWhere((e) => e.id == item.id);
    productsPagingController.itemList![index] = item;
    // productsPagingController.refresh(); // Or just notify listeners if needed, but managing state directly is better
    // Force rebuild to show changes? PagingController doesn't auto rebuild on item change unless we replace list
    var data = productsPagingController.itemList;
    productsPagingController.itemList = [...?data];
  }
}
