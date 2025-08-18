part of 'cart_confirm_buying_widgets_imports.dart';

class CartConfirmShimmerWidget extends StatelessWidget {
  const CartConfirmShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BuildCartStepperShimmer(),
        Flexible(
          child: ListView(
            children: [
              Gaps.vGap13,
              _buildCartOrderDetailsShimmer(context),
              Gaps.vGap12,
              _buildSectionTitleShimmer(context),
              Gaps.vGap8,
              _buildProductsShimmer(context),
              Gaps.vGap12,
              _buildSectionTitleShimmer(context),
              Gaps.vGap8,
              _buildInvoiceSummaryShimmer(context),
              Gaps.vGap30,
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCartOrderDetailsShimmer(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 40,
          padding: const EdgeInsets.only(top: 46, bottom: 20, right: 21, left: 21).r,
          margin: const EdgeInsets.only(top: 43),
          decoration: CustomDecoration(
            thisColor: context.colors.white,
          ),
          child: Column(
            children: [
              // Thank you text shimmer
              BuildShimmerItem(
                height: 22.h,
                width: 200.w,
                borderRadius: BorderRadius.circular(4),
              ),
              Gaps.vGap18,
              Gaps.line(context.colors.softGray, 0),
              Gaps.vGap8,
              // Order number row shimmer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildShimmerItem(
                    height: 18.h,
                    width: 80.w,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  Gaps.hGap8,
                  BuildShimmerItem(
                    height: 18.h,
                    width: 100.w,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ],
              ),
              Gaps.vGap8,
              Gaps.line(context.colors.softGray, 0),
              Gaps.vGap14,
              // Order info shimmer
              _buildOrderInfoShimmer(context),
            ],
          ),
        ),
        // Order confirm image shimmer
        Container(
          width: 80.w,
          height: 80.h,
          decoration: BoxDecoration(
            color: context.colors.offWhite,
            shape: BoxShape.circle,
          ),
          child: BuildShimmerItem(
            borderRadius: Dimens.borderRadius40PX,
            width: 80.w,
            height: 80.h,
          ),
        ),
      ],
    );
  }

  Widget _buildOrderInfoShimmer(BuildContext context) {
    return Column(
      children: List.generate(7, (index) {
        return Column(
          children: [
            Row(
              children: [
                BuildShimmerItem(
                  height: 16.h,
                  width: 60.w,
                  borderRadius: BorderRadius.circular(4),
                ),
                Gaps.hGap16,
                Expanded(
                  child: BuildShimmerItem(
                    height: 16.h,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
            if (index < 6) Gaps.vGap8,
          ],
        );
      }),
    );
  }

  Widget _buildSectionTitleShimmer(BuildContext context) {
    return Padding(
      padding: Dimens.paddingHorizontal20PX,
      child: BuildShimmerItem(
        height: 20.h,
        width: 120.w,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  Widget _buildProductsShimmer(BuildContext context) {
    return Column(
      children: List.generate(2, (index) {
        return Container(
          padding: const EdgeInsets.only(left: 19, right: 19, top: 17, bottom: 20).r,
          margin: Dimens.paddingHorizontal20PX,
          decoration: const CustomDecoration(),
          child: Column(
            children: [
              // Sold by row shimmer
              Row(
                children: [
                  BuildShimmerItem(
                    height: 16.h,
                    width: 60.w,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  Gaps.hGap7,
                  BuildShimmerItem(
                    height: 16.h,
                    width: 100.w,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ],
              ),
              Gaps.vGap12,
              // Product items shimmer
              ...List.generate(2, (productIndex) {
                return Container(
                  padding: Dimens.paddingH17V13,
                  margin: const EdgeInsets.only(bottom: 8),
                  decoration: CustomDecoration(
                    boxBorder: Border.all(color: context.colors.gray3),
                    myBoxShadow: const [],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Product image shimmer
                      BuildShimmerItem(
                        width: 46.w,
                        height: 46.h,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      Gaps.hGap11,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Product name shimmer
                            BuildShimmerItem(
                              height: 16.h,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            Gaps.vGap5,
                            // Rating shimmer
                            Row(
                              children: List.generate(5, (starIndex) {
                                return Padding(
                                  padding: EdgeInsets.only(right: 2.w),
                                  child: BuildShimmerItem(
                                    width: 10.w,
                                    height: 10.h,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                );
                              }),
                            ),
                            Gaps.vGap5,
                            // Price and quantity row shimmer
                            Row(
                              children: [
                                Expanded(
                                  child: BuildShimmerItem(
                                    height: 16.h,
                                    width: 80.w,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                BuildShimmerItem(
                                  height: 16.h,
                                  width: 60.w,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
              // Track shipment shimmer
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Row(
                  children: [
                    BuildShimmerItem(
                      height: 16.h,
                      width: 100.w,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    Gaps.hGap10,
                    BuildShimmerItem(
                      width: 16.w,
                      height: 16.h,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    const Spacer(),
                    BuildShimmerItem(
                      height: 16.h,
                      width: 60.w,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildInvoiceSummaryShimmer(BuildContext context) {
    return Container(
      margin: Dimens.paddingHorizontal20PX,
      padding: const EdgeInsets.all(20).r,
      decoration: CustomDecoration(
        thisColor: context.colors.white,
      ),
      child: Column(
        children: [
          // Summary items shimmer
          ...List.generate(5, (index) {
            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: BuildShimmerItem(
                        height: 16.h,
                        width: 80.w,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    BuildShimmerItem(
                      height: 16.h,
                      width: 60.w,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ],
                ),
                if (index < 4) Gaps.vGap8,
                // Divider for last item
                if (index == 3) ...[
                  Gaps.vGap8,
                  Gaps.line(context.colors.softGray, 15.h),
                  Gaps.vGap8,
                ],
              ],
            );
          }),
        ],
      ),
    );
  }
}
