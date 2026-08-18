part of 'product_details_widgets_imports.dart';

class BuildLoadingInfo extends StatelessWidget {
  const BuildLoadingInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll8PX,
      margin: Dimens.standardPadding,
      decoration: CustomDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildShimmerItem(
            height: 15.h,
            width: 150.w,
            margin: Dimens.paddingVertical5PX,
          ),
          Row(
            children: [
              BuildShimmerItem(
                child: RatingBar.builder(
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemSize: 15.sp,
                  itemBuilder: (context, _) => const Icon(Icons.star),
                  onRatingUpdate: (rating) {},
                ),
              ),
              Gaps.hGap5,
              BuildShimmerItem(height: 10.h, width: 50.w),
              const Spacer(),
              BuildShimmerItem(height: 18.h, width: 90.w),
            ],
          ),
          Gaps.line(context.colors.greyWhite, 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildShimmerItem(height: 10.h, width: 50.w),
                  BuildShimmerItem(height: 10.h, width: 100.w),
                ],
              ),
              BuildShimmerItem(width: 110.w, height: 20.h),
            ],
          ),
          Gaps.line(context.colors.greyWhite, 20.h),
          BuildShimmerItem(height: 10.h, width: 70.w),
          BuildShimmerItem(height: 40.h, width: double.infinity),
          Gaps.vGap10,
        ],
      ),
    );
  }
}
