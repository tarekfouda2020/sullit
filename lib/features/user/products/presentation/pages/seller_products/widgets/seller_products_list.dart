part of 'seller_products_widgets_imports.dart';

class SellerProductsList extends StatelessWidget {
  final SellerProductsController controller;
  const SellerProductsList({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
      ),
      sliver: PagedSliverGrid<int, ProductCard>(
        showNewPageErrorIndicatorAsGridChild: false,
        showNewPageProgressIndicatorAsGridChild: false,
        showNoMoreItemsIndicatorAsGridChild: false,
        shrinkWrapFirstPageIndicators: false,
        pagingController: controller.pagingController,
        gridDelegate: _buildGridDelegate(),
        builderDelegate: PagedChildBuilderDelegate<ProductCard>(
          itemBuilder: (context, item, index) {
            // final item = controller.pagingController.itemList![index];
            return BuildProductItem(
              showVipDiscount: item.hasVipOffer,
              productModel: item,
              onFavRefresh: () => controller.onFavChanged(item),
              onPressDelete: () async => controller.getCartData(),
            );
          },
          firstPageProgressIndicatorBuilder: (_) =>
              const BuildLoadingProductsGridView(),
          noItemsFoundIndicatorBuilder: (_) => const BuildEmptyDataView(),
          newPageProgressIndicatorBuilder: (context) => Gaps.empty,
        ),
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount _buildGridDelegate() {
    return const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 0.75,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
    );
  }
}
