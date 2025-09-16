part of 'seller_products_widgets_imports.dart';


class AllBrandsSheetWidget extends StatelessWidget {
  final SellerProductsController controller;
  const AllBrandsSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 20),
      margin: const EdgeInsets.only(top: kToolbarHeight+20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: CustomRefreshIndicatorWidget(
        onRefresh: () => controller.getBrands(1),
        child: PagedListView<int, BrandDomainModel>(
          pagingController: controller.brandsPagingController,
          builderDelegate: PagedChildBuilderDelegate<BrandDomainModel>(
            itemBuilder: (_, item, index) {
              return SellerBrandItemWidget(brand: item, controller: controller);
            },
            noItemsFoundIndicatorBuilder: (cxt) {
              return Center(
                child: Text(
                  "No Brands Found",
                  style: AppTextStyle.s16_w700(color: context.colors.black),
                ),
              );
            },
            firstPageProgressIndicatorBuilder: (_) => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
        ),
      ),
    );
  }
}
