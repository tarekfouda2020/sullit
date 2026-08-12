part of '../instore_checkout_imports.dart';

class InstoreCheckoutShimmerWidget extends StatelessWidget {
  const InstoreCheckoutShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Dimens.paddingHorizontal15PX,
      children: [
        Gaps.vGap16,
        const BuildShimmerItem(height: 20, width: 140),
        Gaps.vGap12,
        const BuildShimmerItem(height: 140),
        Gaps.vGap20,
        const BuildShimmerItem(height: 20, width: 100),
        Gaps.vGap12,
        const BuildShimmerItem(height: 180),
        Gaps.vGap20,
        const BuildShimmerItem(height: 20, width: 120),
        Gaps.vGap12,
        const BuildShimmerItem(height: 220),
        Gaps.vGap20,
        const BuildShimmerItem(height: 30),
        Gaps.vGap20,
        const BuildShimmerItem(height: 120),
      ],
    );
  }
}
