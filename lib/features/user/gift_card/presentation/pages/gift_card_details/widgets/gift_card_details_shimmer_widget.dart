part of 'gift_card_details_widgets_imports.dart';

class GiftCardDetailsShimmerWidget extends StatelessWidget {
  final bool isMyGiftCard;
  
  const GiftCardDetailsShimmerWidget({
    super.key,
    this.isMyGiftCard = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        // Gradient container shimmer
        BuildShimmerItem(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 10).r,
            margin: const EdgeInsets.only(top: 85),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  context.colors.darkRed,
                  context.colors.primary,
                ],
              ),
            ),
            child: Column(
              children: [
                Gaps.vGap30,
                // GiftCardInfoWidget shimmer
                _buildGiftCardInfoShimmer(context),
                // GiftCardBarcodeWidget shimmer (only for my gift cards)
                if (isMyGiftCard) _buildGiftCardBarcodeShimmer(context),
                // GiftCardCouponWidget shimmer (only for my gift cards)
                if (isMyGiftCard) _buildGiftCardCouponShimmer(context),
              ],
            ),
          ),
        ),
        // Positioned image shimmer
        Positioned(
          child: BuildShimmerItem(
            child: Container(
              width: 120, // Adjust based on actual image size
              height: 80, // Adjust based on actual image size
              decoration: BoxDecoration(
                color: context.colors.offWhite,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGiftCardInfoShimmer(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Title shimmer
        const BuildShimmerItem(
          height: 14,
          width: 150,
        ),
        Gaps.vGap13,
        // Price row shimmer
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!isMyGiftCard) ...[
              const BuildShimmerItem(
                height: 20,
                width: 80,
              ),
              Gaps.hGap8,
            ],
            const BuildShimmerItem(
              height: 30,
              width: 120,
            ),
          ],
        ),
        Gaps.vGap13,
        // Get purchases text shimmer
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BuildShimmerItem(
              height: 18,
              width: 140,
            ),
            Gaps.hGap2,
            const BuildShimmerItem(
              height: 18,
              width: 100,
            ),
          ],
        ),
        Gaps.vGap13,
        // Valid days text shimmer
        const BuildShimmerItem(
          height: 18,
          width: 120,
        ),
      ],
    );
  }

  Widget _buildGiftCardBarcodeShimmer(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap19,
        // Barcode image shimmer
        BuildShimmerItem(
          child: Container(
            width: 236,
            height: 74,
            decoration: BoxDecoration(
              color: context.colors.offWhite,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGiftCardCouponShimmer(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(top: 13, bottom: 17, end: 16),
      margin: const EdgeInsetsDirectional.only(start: 35, end: 35, top: 24),
      decoration: BoxDecoration(
        color: context.colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(flex: 1, child: Gaps.empty),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // "Discount code" text shimmer
                const BuildShimmerItem(
                  height: 14,
                  width: 100,
                ),
                Gaps.vGap12,
                // Code text shimmer
                const BuildShimmerItem(
                  height: 24,
                  width: 150,
                ),
                Gaps.vGap10,
                // "Applied on online Purchases" text shimmer
                const BuildShimmerItem(
                  height: 14,
                  width: 160,
                ),
              ],
            ),
          ),
          // Copy icon shimmer
          Expanded(
            flex: 1,
            child: BuildShimmerItem(
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: context.colors.offWhite,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
