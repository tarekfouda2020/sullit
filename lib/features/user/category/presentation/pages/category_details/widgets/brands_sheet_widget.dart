part of 'category_details_widgets_imports.dart';

class BrandsSheetWidget extends StatelessWidget {
  final CategoryDetailsController controller;
  const BrandsSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kToolbarHeight + 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius
      ),
      child: Column(
        children: [
          Gaps.vGap10,
           BottomSheetHeaderWidget(title: tr("brands")),
          Gaps.vGap15,
          BrandsSearchFiledWidget(
            txtController: controller.brandsSearchCtr,
            onPressSearch: () => controller.refreshBrands(context),
            onChange: (value) =>  controller.whileSearch(value),
          ),
          Gaps.vGap15,
          Flexible(
            child: CustomRefreshIndicatorWidget(
              onRefresh: () async => await controller.getBrands(1),
              child : PagedListView<int, BrandDomainModel>(
                pagingController: controller.brandsPagingController,
                builderDelegate: PagedChildBuilderDelegate<BrandDomainModel>(
                  itemBuilder: (_, item, index) => BrandsSheetItemWidget(
                    onTap: () => _onTap(item, context),
                    brandModel: item,
                    isSelected: controller.brandModel?.id == item.id,
                  ),
                  noItemsFoundIndicatorBuilder: (_) => const BuildEmptyDataView(),
                  firstPageProgressIndicatorBuilder: (_) => Column(
                    spacing: 10,
                    children: List.generate(3, (index) {
                      return const BrandsSheetShimmerWidget();
                    },),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _onTap(BrandDomainModel item, BuildContext context) {
     controller.onChangeBrand(item);
    Navigator.pop(context);
    controller.confirmFilter(context);
  }
}
