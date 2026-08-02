part of 'wishlist_imports.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  late WishlistController controller;

  @override
  void initState() {
    controller = WishlistController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: tr('wishlist'),
        showBack: true,
      ),
      body: GridViewPagination<ProductCard>(
        padding: Dimens.paddingAll15PX,
        pagingController: controller.pagingController,
        onRefresh: () async => controller.getWishlist(),
        firstPageProgressIndicatorBuilder: (_) =>
            const BuildLoadingProductsGridView(),
        itemBuilder: (_, item, index) => BuildProductItem(
          productModel: item,
          onFavRefresh: () => controller.onChangeFav(item),
          onRefresh: () => controller.getWishlist(),
          // afterAddToCart:  () => getIt<CartHelper>().showCartSuccessSheet(context),
        ),
        noItemsFoundIndicatorBuilder: (context) {
          return const BuildEmptyDataImage();
        },
      ),
    );
  }
}
