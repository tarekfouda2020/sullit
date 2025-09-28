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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           BuildShimmerItem(height: 22,width: 170),
          BuildShimmerItem(height: 43),
        ],
      ),
    );
  }
}
