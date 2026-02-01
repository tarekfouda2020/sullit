part of 'category_details_widgets_imports.dart';


class BuildSellersFilterItem extends StatelessWidget {
  final CategoryDetailsController controller;
  const BuildSellersFilterItem({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.showSellersCubit,
      builder: (context, state) {
        return Column(
          children: [
            GestureDetector(
              onTap: () => controller.showSellersCubit.onUpdateData(!state.data),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tr("Sellers"),
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
            Divider(endIndent: 5, color: context.colors.gray, height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (state.data)
                  CustomSearchFiledWidget(
                    txtController: controller.searchSellersController,
                    onPressSearch: () => controller.refreshSellers(context),
                    onChange: (value) => controller.whileWritingSellers(value),
                    onPressClear: () => controller.getBestSellers(1),
                  ),
                Gaps.vGap12,
                if (state.data)
                  Visibility(
                    visible: controller
                        .pagingSellersController.itemList?.isNotEmpty ==
                        true,
                    replacement: Center(
                      child: Text(
                        tr('noSellersHere'),
                        style: AppTextStyle.s15_w400(
                          color: context.colors.black,
                        ),
                      ),
                    ),
                    child: BlocBuilder<GenericBloc<List<Shop>>,
                        GenericState<List<Shop>>>(
                      bloc: controller.sellersCubit,
                      builder: (context, state) {
                        if (state is GenericUpdateState) {
                          return Visibility(
                            visible: state.data.isNotEmpty,
                            replacement: Center(
                              child: Text(
                                tr('noSellersHere'),
                                style: AppTextStyle.s15_w400(
                                  color: context.colors.black,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (state.data.length > 10)
                                  GestureDetector(
                                    // onTap: () =>
                                    //     controller.showBrandsSheet(context),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 12),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            tr("seeAll"),
                                            style: AppTextStyle.s13_w400(
                                                color: context.colors.primary),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ...List.generate(state.data.length, (index) {
                                  var model = state.data[index];
                                  return SubFilterItemWidget(
                                    text: model.name??"",
                                    isSelected:
                                    model.id == controller.selectedSeller?.id,
                                    onSelect: (value) =>
                                        controller.onChangeSellers(model),
                                  );
                                })
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
                    ),
                  )
              ],
            ),
          ],
        );
      },
    );
  }
}
