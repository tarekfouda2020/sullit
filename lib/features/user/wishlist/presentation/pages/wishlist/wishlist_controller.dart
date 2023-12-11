part of 'wishlist_imports.dart';

class WishlistController {
  final GenericBloc<List<Product>> wishlistBloc = GenericBloc([]);

  void getWishlist({bool refresh = true}) async {
    return await GetWishlist()(refresh)
        .then((value) => wishlistBloc.onUpdateData(value));
  }

  void onChangeFav(Product item) {
    var allWishList = wishlistBloc.state.data;
    item.isWishlist = !item.isWishlist!;
    allWishList.remove(item);
    wishlistBloc.onUpdateData(allWishList);
  }

}
