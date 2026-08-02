part of 'order_details_widgets_imports.dart';

class OrderDetailsShimmerWidget extends StatelessWidget {
  const OrderDetailsShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicatorWidget(
      onRefresh: () async {},
      child: ListView(
        padding: Dimens.paddingHorizontal20PX,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 12, bottom: 20, right: 21, left: 18)
                .r,
            decoration: CustomDecoration(
              thisColor: context.colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildShimmerItem(
                      height: 18,
                      width: 140,
                      borderRadius: Dimens.borderRadius10PX,
                    ),
                  ],
                ),
                Gaps.vGap14,
                Gaps.line(context.colors.softGray, 0),
                Gaps.vGap14,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    6,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          BuildShimmerItem(
                            height: 14,
                            width: 90,
                            borderRadius: Dimens.borderRadius10PX,
                          ),
                          Gaps.hGap4,
                          Expanded(
                            child: BuildShimmerItem(
                              height: 14,
                              borderRadius: Dimens.borderRadius10PX,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gaps.vGap12,
          BuildShimmerItem(
            height: 18,
            width: 100,
            borderRadius: Dimens.borderRadius10PX,
          ),
          Gaps.vGap12,
          const OrderDetailsProductsShimmerWidget(),
          Gaps.vGap12,
          BuildShimmerItem(
            height: 18,
            width: 120,
            borderRadius: Dimens.borderRadius10PX,
          ),
          Gaps.vGap12,
          const OrderDetailsSummaryShimmerWidget(),
          Gaps.vGap40,
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: BuildShimmerItem(
                  height: Dimens.dp40,
                  borderRadius: Dimens.borderRadius10PX,
                ),
              ),
              Expanded(
                child: BuildShimmerItem(
                  height: Dimens.dp40,
                  borderRadius: Dimens.borderRadius10PX,
                ),
              ),
            ],
          ),
          Gaps.vGap20,
        ],
      ),
    );
  }
}
