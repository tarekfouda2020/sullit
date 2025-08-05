part of 'seller_products_imports.dart';

class PopularProductsController {


  final PagingController<int, Product> pagingController = PagingController(firstPageKey: 1);
  int pageSize = 12;

   SellerProductDomainModel? allSellerData;
   late final int shopId;

  PopularProductsController(int id){
    shopId = id;
    pagingController.addPageRequestListener((pageKey) {
      getProducts(pageKey, refresh: false);
      getProducts(pageKey);
    });
  }


  Future<void> getProducts(int page, {bool refresh = true}) async {
    var params = _params(page, refresh);
    var result = await GetSellerProducts().call(params);
    allSellerData = result;
    final List<Product> data = result?.sectionProductModel.products ?? <Product>[];
    final isLastPage = (data.length) < pageSize;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      pagingController.appendPage(data, nextPageKey);
    }
  }


  void onFavChanged(Product model) {
    model.isWishlist = !model.isWishlist!;
    int index = pagingController.itemList!.indexWhere((e) => e.id == model.id);
    pagingController.itemList![index] = model;
    var data = pagingController.itemList;
    pagingController.itemList = [];
    pagingController.itemList = data;
  }

  SellerProductsParams _params(int page, bool refresh){
    return SellerProductsParams(
        sellerId: shopId,
        paginateParams: _paginateParams(page, refresh)
    );
  }


   GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }

}