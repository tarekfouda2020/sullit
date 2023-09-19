part of 'customer_product_details_w_imports.dart';

class BuildLoadingCustomerDetails extends StatelessWidget {
  const BuildLoadingCustomerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Dimens.standardPadding,
      children: [
        BuildShimmerItem(height: 200.spMin),
        Container(
          padding: Dimens.paddingAll8PX,
          margin: Dimens.paddingVertical10PX,
          decoration: CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Expanded(child: BuildShimmerItem(height: 20.h)),
                  Gaps.hGap15,
                  Expanded(child: BuildShimmerItem(height: 20.h)),
                ],
              ),
              Row(
                children: [
                  BuildShimmerItem(
                    height: 30.r,
                    width: 30.r,
                    borderRadius: Dimens.borderRadius20PX,
                  ),
                  Gaps.hGap15,
                  Expanded(child: BuildShimmerItem(height: 15.h)),
                ],
              ),
              Row(
                children: [
                  BuildShimmerItem(
                    height: 30.r,
                    width: 30.r,
                    borderRadius: Dimens.borderRadius20PX,
                  ),
                  Gaps.hGap15,
                  Expanded(child: BuildShimmerItem(height: 15.h)),
                ],
              ),
              Row(
                children: [
                  BuildShimmerItem(
                    height: 30.r,
                    width: 30.r,
                    borderRadius: Dimens.borderRadius20PX,
                  ),
                  Gaps.hGap15,
                  Expanded(child: BuildShimmerItem(height: 15.h)),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: Dimens.paddingAll10PX,
          margin: Dimens.paddingVertical5PX,
          decoration: CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildShimmerItem(height: 15.h),
              Gaps.vGap8,
              BuildShimmerItem(height: 35.h),
            ],
          ),
        ),
        Container(
          padding: Dimens.paddingAll10PX,
          margin: Dimens.paddingVertical5PX,
          decoration: CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildShimmerItem(height: 15.h),
              Gaps.vGap10,
              Center(
                child: BuildShimmerItem(height: 35.h, width: 150.w),
              ),
            ],
          ),
        )
      ],
    );
  }
}
