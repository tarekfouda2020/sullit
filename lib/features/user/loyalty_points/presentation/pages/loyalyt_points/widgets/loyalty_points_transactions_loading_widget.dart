part of 'loyalty_points_widgets_imports.dart';


class LoyaltyPointsTransactionsLoadingWidget extends StatelessWidget {
  const LoyaltyPointsTransactionsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: Dimens.borderRadius12PX,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BuildShimmerItem(height: 12, width: 47),
              Gaps.vGap6,
              const BuildShimmerItem(height: 12, width: 110),
              Gaps.vGap4,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BuildShimmerItem(height: 12, width: 160),
                  BuildShimmerItem(height: 12, width: 71),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
