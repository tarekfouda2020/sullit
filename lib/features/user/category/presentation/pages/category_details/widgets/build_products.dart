part of 'category_details_widgets_imports.dart';

class BuildProducts extends StatelessWidget {
  final CategoryDetailsController detailsController;

  const BuildProducts({super.key, required this.detailsController});

  @override
  Widget build(BuildContext context) {
    bool? haveVipDiscount =
        context.read<UserCubit>().state.model?.hasValidSubscription;
    return Flexible(
      child: GridViewPagination<Product>(
        pagingController: detailsController.pagingController,
        onRefresh: () async => await detailsController.getPopularProducts(1),
        firstPageProgressIndicatorBuilder: (_) =>
            const BuildLoadingCatsProducts(),
        itemBuilder: (_, item, index) => BuildProductItem(
          productModel: item,
          onFavRefresh: () => detailsController.onFavChanged(item),
          onPressDecrease:(loading) async => await  detailsController.reduceProductQntInCart(context,item,loading) ,
          onPressDelete: () async => await detailsController.deleteProductFromCart(context, item),
          showVipDiscount: haveVipDiscount,
          afterAddToCart: ()=> detailsController.getCartItems(),
          onRefresh: () async {
             detailsController.getPopularProducts(detailsController.currentPageKey);
            detailsController.getCartItems();
          },
        ),
      ),
    );
  }
}
