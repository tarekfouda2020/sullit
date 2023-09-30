part of 'category_details_widgets_imports.dart';

class BuildPriceRange extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;

  const BuildPriceRange({required this.categoryDetailsController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            tr('priceRange'),
            style: AppTextStyle.s14_w800(color: context.colors.black),
          ),
        ),
        Gaps.line(context.colors.gray, 15),
        BlocBuilder<GenericBloc<PriceRangeParams?>,
            GenericState<PriceRangeParams?>>(
          bloc: categoryDetailsController.rangeCubit,
          builder: (_, state) {
            if (state.data == null) {
              return Container();
            }
            return Container(
              margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
              child: Column(
                children: [
                  RangeSlider(
                    values: state.data!.value,
                    min: state.data!.initial.start,
                    max: state.data!.initial.end,
                    divisions: 10,
                    activeColor: context.colors.primary,
                    labels: RangeLabels(
                      state.data!.value.start.round().toString(),
                      state.data!.value.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) => categoryDetailsController
                        .changePriceValue(values, context),
                    inactiveColor: context.colors.greyWhite,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: Dimens.dp10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${state.data!.value.start.toInt()} ",
                          style:
                          AppTextStyle.s14_w800(color: context.colors.black),
                        ),
                        Text(
                          "${state.data!.value.end.toInt()} ",
                          style:
                          AppTextStyle.s14_w800(color: context.colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
