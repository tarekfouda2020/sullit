part of 'home_main_widgets_imports.dart';

class InStoreShoppingBannerShimmerWidget extends StatelessWidget {
  const InStoreShoppingBannerShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: Row(
        children: [
          const BuildShimmerItem(
            width: 48,
            height: 48,
            borderRadius: BorderRadius.all(Radius.circular(48)),
            margin: EdgeInsets.zero,
          ),
          Gaps.hGap16,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BuildShimmerItem(width: 160, height: 12, margin: EdgeInsets.zero),
                Gaps.vGap8,
                const BuildShimmerItem(width: 180, height: 20, margin: EdgeInsets.zero),
              ],
            ),
          ),
          const BuildShimmerItem(
            width: 24,
            height: 24,
            borderRadius: BorderRadius.all(Radius.circular(24)),
            margin: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
