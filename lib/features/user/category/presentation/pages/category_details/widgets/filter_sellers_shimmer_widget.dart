part of 'category_details_widgets_imports.dart';


class FilterSellersShimmerWidget extends StatelessWidget {
  const FilterSellersShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
}
