part of'loyalty_points_widgets_imports.dart';
class LoyaltyPointsInfoLoadingWidget extends StatelessWidget {
  const LoyaltyPointsInfoLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20PX,
      width: MediaQuery.of(context).size.width,
      decoration: CustomDecoration(),
      child: Column(
        children: [
          const BuildShimmerItem(height: 24),
          Padding(
            padding: Dimens.paddingVertical12PX,
            child: const BuildShimmerItem(height: 43),
          ),
          const BuildShimmerItem(height: 74)
        ],
      ),
    );
  }
}
