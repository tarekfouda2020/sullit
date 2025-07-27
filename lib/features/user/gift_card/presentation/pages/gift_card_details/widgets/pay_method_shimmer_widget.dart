part of 'gift_card_details_widgets_imports.dart';

class PayMethodShimmerWidget extends StatelessWidget {
  const PayMethodShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius20PX,
        border: Border.all(color: context.colors.gray4.withOpacity(0.8)),
      ),
      child: Row(
        children: [
          BuildShimmerItem(
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: context.colors.offWhite,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Gaps.hGap15,
          // Payment method title shimmer
          const BuildShimmerItem(
            height: 15,
            width: 120,
          ),
          BuildShimmerItem(
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: context.colors.offWhite,
                shape: BoxShape.circle,
                border: Border.all(color: context.colors.gray4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
