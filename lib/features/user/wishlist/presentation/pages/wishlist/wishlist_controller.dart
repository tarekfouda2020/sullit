part of 'wishlist_imports.dart';

class WishlistController {
  final PagingController<int, ProductCard> pagingController =
      PagingController(firstPageKey: 1);

  WishlistController() {
    getWishlist(refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getWishlist();
    });
  }

  Future<void> getWishlist({bool refresh = true}) async {
    var data = await GetWishlist()(GetWishlistParams(refresh: refresh));
    pagingController.itemList = [];
    pagingController.appendLastPage(data);
  }

  void onChangeFav(ProductCard item) {
    var allWishList = pagingController.itemList ?? [];
    item.isWishlist = !item.isWishlist;
    allWishList.remove(item);
    pagingController.itemList = [...allWishList];
  }

  void dispose() {
    pagingController.dispose();
  }
}
