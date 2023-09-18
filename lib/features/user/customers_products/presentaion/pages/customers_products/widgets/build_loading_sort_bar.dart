part of 'customers_products_w_imports.dart';

class BuildLoadingSortBar extends StatelessWidget {
  const BuildLoadingSortBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingAll10PX,
      child: Column(
        children: [
          BuildShimmerItem(height: 35.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: BuildShimmerItem(height: 35.h)),
              Gaps.hGap5,
              Expanded(child: BuildShimmerItem(height: 35.h)),
            ],
          ),
        ],
      ),
    );
  }
}
