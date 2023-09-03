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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "WishList", showBack: true),
      body: GenericListView(
        type: ListViewType.gridApi,
        onRefresh: controller.getWishlist,
        cubit: controller.wishlistBloc,
        runSpacing: 15.r,
        spacing: 15.r,
        gridCrossCount: 2,
        gridItemHeight: 200.spMin,
        padding: Dimens.paddingAll15PX,
        itemBuilder: (_, index, item) => BuildProductItem(
          productModel: item,
          onFavRefresh: () => controller.onChangeFav(item),
          onCompareRefresh: () {
            controller.wishlistBloc.state.data[index].isAddedTCompare= !controller.wishlistBloc.state.data[index].isAddedTCompare!;
            controller.wishlistBloc.onUpdateData(controller.wishlistBloc.state.data);
          },
        ),
        loadingWidget: const BuildLoadingProductsGridView(),
        emptyWidget: const BuildEmptyDataView(),
      ),
    );
  }
}
