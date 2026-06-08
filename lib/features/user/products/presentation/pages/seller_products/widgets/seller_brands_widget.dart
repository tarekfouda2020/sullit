part of 'seller_products_widgets_imports.dart';

class SellerBrandsWidget extends StatelessWidget {
  final SellerProductsController controller;

  const SellerBrandsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.showBrandsCubit,
      builder: (context, state) {
        return Column(
          children: [
            GestureDetector(
              // onTap: () => controller.showBrandsSheet(context),
              onTap: () => controller.showBrandsCubit.onUpdateData(!state.data),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tr("brand"),
                    style: AppTextStyle.s14_w600(color: context.colors.black),
                  ),
                  Icon(
                    state.data
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    color: context.colors.black,
                    size: 20.sp,
                  )
                ],
              ),
            ),
            Gaps.line(context.colors.gray, 15),
            Visibility(
                visible: state.data,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSearchFiledWidget(
                        txtController: controller.brandsSearchCtr,
                        onPressSearch: () => controller.refreshBrands(context),
                        onPressClear: () => controller.getBrands(1),
                        onChange: (value) =>
                            DebounceHelper.instance.startSearch(
                              value: value,
                              onSearch: (val) => controller
                                  .refreshBrands(context, disableFocus: false),
                            )),
                    Gaps.vGap10,
                    BlocBuilder<GenericBloc<List<BrandDomainModel>>,
                        GenericState<List<BrandDomainModel>>>(
                      bloc: controller.brandsCubit,
                      builder: (context, state) {
                        if (state is GenericUpdateState) {
                          List<BrandDomainModel> list =
                              state.data.take(10).toList();
                          return Visibility(
                            visible: list.isNotEmpty,
                            replacement: Center(
                              child: Center(
                                child: Text(
                                  tr('noBrandsHere'),
                                  style: AppTextStyle.s15_w400(
                                    color: context.colors.black,
                                  ),
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                if (state.data.length > 10)
                                  Align(
                                    alignment: AlignmentDirectional.centerEnd,
                                    child: GestureDetector(
                                      onTap: () =>
                                          controller.showBrandsSheet(context),
                                      child: Text(
                                        tr('seeAll'),
                                        style: AppTextStyle.s15_w400(
                                          color: context.colors.primary,
                                        ),
                                      ),
                                    ),
                                  ),
                                ...List.generate(
                                  list.length,
                                  (index) {
                                    var model = list[index];
                                    return SubFilterItemWidget(
                                      text: model.name,
                                      isSelected: model.id ==
                                          controller.selectedBrand?.id,
                                      onSelect: (value) =>
                                          controller.onSelectBrand(model),
                                    );
                                  },
                                )
                              ],
                            ),
                          );
                        } else {
                          return Column(
                            children: List.generate(
                              3,
                              (index) {
                                return Row(
                                  children: [
                                    BuildShimmerItem(
                                      width: 30,
                                      height: 30,
                                      borderRadius: Dimens.borderRadius12PX,
                                      boxShape: BoxShape.rectangle,
                                    ),
                                    Gaps.hGap10,
                                    const BuildShimmerItem(
                                      width: 100,
                                      height: 8,
                                    )
                                  ],
                                );
                              },
                            ),
                          );
                        }
                      },
                    )
                  ],
                ))
          ],
        );
      },
    );
  }
}
