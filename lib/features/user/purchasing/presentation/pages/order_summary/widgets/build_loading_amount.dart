part of 'order_summary_widgets_imports.dart';

class BuildLoadingAmount extends StatelessWidget {
  const BuildLoadingAmount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      margin: Dimens.paddingVertical5PX,
      decoration: CustomDecoration(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildShimmerItem(height: 15.h, width: 80.w),
              BuildShimmerItem(height: 15.h, width: 100.w),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildShimmerItem(height: 15.h, width: 70.w),
              BuildShimmerItem(height: 15.h, width: 100.w),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildShimmerItem(height: 15.h, width: 80.w),
              BuildShimmerItem(height: 15.h, width: 100.w),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildShimmerItem(height: 15.h, width: 70.w),
              BuildShimmerItem(height: 15.h, width: 100.w),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildShimmerItem(height: 15.h, width: 80.w),
              BuildShimmerItem(height: 15.h, width: 100.w),
            ],
          ),
        ],
      ),
    );
  }
}
