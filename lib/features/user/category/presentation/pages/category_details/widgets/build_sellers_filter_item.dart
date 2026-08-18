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
              onTap: () =>
                  controller.showSellersCubit.onUpdateData(!state.data),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tr("sellers"),
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
                    hint: tr("search_in_sellers"),
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
                    child: FilterSellerListWidget(controller: controller),
                  )
              ],
            ),
          ],
        );
      },
    );
  }
}
