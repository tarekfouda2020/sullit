part of 'seller_products_widgets_imports.dart';

class AllBrandsSheetWidget extends StatelessWidget {
  final SellerProductsController controller;
  const AllBrandsSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
      margin: const EdgeInsets.only(top: kToolbarHeight + 20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        children: [
          BottomSheetHeaderWidget(title: tr("brands")),
          Gaps.vGap15,
          CustomSearchFiledWidget(
            txtController: controller.brandsSearchCtr,
            onPressSearch: () => controller.refreshBrands(context),
            onPressClear: () => controller.getBrands(1),
            onChange: (value) => DebounceHelper.instance.startSearch(
              value: value,
              onSearch: (val) =>
                  controller.refreshBrands(context, disableFocus: false),
            ),
          ),
          Gaps.vGap15,
          Expanded(
            child: CustomRefreshIndicatorWidget(
              onRefresh: () => controller.getBrands(1),
              child: PagedListView<int, BrandDomainModel>(
                pagingController: controller.brandsPagingController,
                builderDelegate: PagedChildBuilderDelegate<BrandDomainModel>(
                  itemBuilder: (_, item, index) {
                    return BrandsSheetItemWidget(
                      onTap: () => _onTap(item, context),
                      brandModel: item,
                    );
                  },
                  noItemsFoundIndicatorBuilder: (_) =>
                      const BuildEmptyDataView(),
                  firstPageProgressIndicatorBuilder: (_) => Column(
                    spacing: 10,
                    children: List.generate(
                      3,
                      (index) {
                        return const BrandsSheetShimmerWidget();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onTap(BrandDomainModel item, BuildContext context) {
    controller.onSelectBrand(item);
    Navigator.pop(context);
  }
}
