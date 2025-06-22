part of 'category_details_widgets_imports.dart';

class BuildPriceRange extends StatelessWidget {
  final CategoryDetailsController categoryDetailsController;

  const BuildPriceRange({super.key, required this.categoryDetailsController});

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
                  SliderTheme(
                      data: SliderThemeData(
                      trackHeight: 5,
                      thumbColor: context.colors.primary,
                     activeTrackColor: const Color(0xffD9D9D9),
                     inactiveTrackColor:context.colors.primary,
                     thumbShape: const RoundSliderOverlayShape(overlayRadius: 50),
                       ),
                    child: RangeSlider(
                      values: state.data!.value,
                      min: state.data!.initial.start,
                      max: state.data!.initial.end,
                      // divisions: 10,
                      labels: RangeLabels(
                        state.data!.value.start.round().toString(),
                        state.data!.value.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) => categoryDetailsController.changePriceValue(values, context),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: Dimens.dp10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Gaps.hGap8,
                        Text(
                          "${state.data!.value.start.toInt()} ",
                          style:
                          AppTextStyle.s14_w800(color: context.colors.black),
                        ),
                        // const Spacer(),
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
