part of 'widgets_imports.dart';

class PharmacyOrderDetailsShimmerWidget extends StatelessWidget {
  const PharmacyOrderDetailsShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicatorWidget(
      onRefresh: () async {},
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: Dimens.paddingAll20PX,
              children: [
                Gaps.vGap10,
                Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    const PharmacyOrderDoneShimmerWidget(),
                    BuildShimmerItem(
                      height: 120,
                      width: 120,
                      boxShape: BoxShape.circle,
                    ),
                  ],
                ),
                Gaps.vGap20,
                BuildShimmerItem(
                  height: 20,
                  width: 100,
                  borderRadius: Dimens.borderRadius10PX,
                ),
                Gaps.vGap20,
                const PharmacyOrderProductsShimmerWidget(),
                Gaps.vGap20,
                const PharmacyConfirmSummaryShimmerWidget(),
              ],
            ),
          ),
          CustomBottomSafeAreaWidget(
            child: Column(
              spacing: 12,
              children: [
                BuildShimmerItem(
                  height: 50,
                  borderRadius: Dimens.borderRadius10PX,
                ),
                BuildShimmerItem(
                  height: 50,
                  borderRadius: Dimens.borderRadius10PX,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
