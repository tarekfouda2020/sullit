part of 'widgets_imports.dart';

class PharmacyProducts extends StatelessWidget {
  final PharmacyDetailsController controller;
  const PharmacyProducts({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
      ),
      sliver: PagedSliverGrid<int, Product>(
        showNewPageErrorIndicatorAsGridChild: false,
        showNewPageProgressIndicatorAsGridChild: false,
        showNoMoreItemsIndicatorAsGridChild: false,
        shrinkWrapFirstPageIndicators: false,
        pagingController: controller.productsPagingController,
        gridDelegate: _buildGridDelegate(),
        builderDelegate: PagedChildBuilderDelegate<Product>(
          itemBuilder: (context, item, index) {
            return PharmacyProductCardWidget(
              controller: controller,
              showVipDiscount: item.hasVipOffer,
              productModel: item,
              onFavRefresh: () => controller.onFavChanged(item),
              onPressDelete: () => controller.getCartItems(),
              afterAddToCart: () => controller.getCartItems(),
              onPressDecrease: () => controller.getCartItems(),
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
