part of 'category_details_widgets_imports.dart';

class BuildProducts extends StatelessWidget {
  final CategoryDetailsController controller;

  const BuildProducts({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RefreshIndicator(
        onRefresh: () => controller.getPopularProducts(1),
        child: PagedGridView<int, Product>(
          padding: Dimens.standardPadding,
          pagingController: controller.pagingController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15.r,
            mainAxisSpacing: 15.r,
            crossAxisCount: 2,
            childAspectRatio: .9,
          ),
          showNewPageProgressIndicatorAsGridChild: false,
          showNewPageErrorIndicatorAsGridChild: true,
          builderDelegate: PagedChildBuilderDelegate<Product>(
            firstPageProgressIndicatorBuilder: (_) =>
                const BuildLoadingCatsProducts(),
            itemBuilder: (_, item, index) => BuildProductItem(
              productModel: item,
              onFavRefresh: () => controller.onFavChanged(item),
              onCompareRefresh: () {
                item.isAddedTCompare = !item.isAddedTCompare!;
              },
            ),
            noItemsFoundIndicatorBuilder: (cxt) => const BuildEmptyDataView(),
          ),
        ),
      ),
    );
  }
}
