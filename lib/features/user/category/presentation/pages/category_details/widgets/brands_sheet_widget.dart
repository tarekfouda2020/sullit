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
          const BottomSheetHeaderWidget(title: "Brands"),
          Gaps.vGap15,
          BrandsSearchFiledWidget(controller: controller),
          Gaps.vGap15,
          Flexible(
            child: CustomRefreshIndicatorWidget(
              onRefresh: () async => await controller.getBrands(1),
              child : PagedListView<int, BrandDomainModel>(
                pagingController: controller.brandsPagingController,
                builderDelegate: PagedChildBuilderDelegate<BrandDomainModel>(
                  itemBuilder: (_, item, index) => GestureDetector(
                    onTap: () => _onTap(item, context),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: context.colors.white,
                          borderRadius: Dimens.borderRadius12PX,
                          border: Border.all(
                              color: controller.brandModel?.id == item.id
                                  ?context.colors.primary
                                  :context.colors.gray3
                          )
                      ),
                      child: Row(
                        children: [
                          CachedImage(url: item.logo,
                            width: 30,
                            height: 30,
                            boxShape: BoxShape.circle,
                            haveRadius: false,
                          ),
                          Gaps.hGap10,
                          Text(item.name,
                            style: AppTextStyle.s15_w500(color: controller.brandModel?.id == item.id
                                ?context.colors.primary
                                :context.colors.black
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  noItemsFoundIndicatorBuilder: (_) => const BuildEmptyDataView(),
                  firstPageProgressIndicatorBuilder: (_) => Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: context.colors.white,
                        borderRadius: Dimens.borderRadius12PX,
                    ),
                    child: Row(
                      children: [
                        const BuildShimmerItem(
                          width: 60,
                          height: 60,
                        ),
                        Gaps.hGap10,
                        const BuildShimmerItem(
                          width: 100,
                          height: 10,
                        )
                      ],
                    ),
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
