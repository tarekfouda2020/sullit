part of 'widgets_imports.dart';

class SellersListWidget extends StatelessWidget {
  final BestSellersPageController controller;
  const SellersListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicatorWidget(
      onRefresh: () => controller.getBestSellers(1),
      child: PagedListView<int, Shop>(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        pagingController: controller.pagingController,
        builderDelegate: PagedChildBuilderDelegate<Shop>(
          itemBuilder: (_, item, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: SellerCardWidget(
                shop: item,
                onTap: () => AutoRouter.of(context).push(
                    SellerProductsPageRoute(
                        shopModel: item,
                        shopId: item.id!,
                        showInStore: index == 1
                    )),
              ),
            );
          },
          noItemsFoundIndicatorBuilder: (cxt) {
            return const BuildEmptyDataView();
          },
          firstPageProgressIndicatorBuilder: (_) => const BestSellersShimmer(),
        ),
      ),
    );
  }
}
