part of 'category_details_widgets_imports.dart';

class FilterSellerListWidget extends StatelessWidget {
  final CategoryDetailsController controller;
  const FilterSellerListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<Shop>>,
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
          return const FilterSellersShimmerWidget();
        }
      },
    );
  }
}
