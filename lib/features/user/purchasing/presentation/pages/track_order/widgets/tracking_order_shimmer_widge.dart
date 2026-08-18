part of 'track_order_widgets_imports.dart';

class TrackingOrderShimmerWidget extends StatelessWidget {
  const TrackingOrderShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Dimens.paddingHorizontal15PX,
      children: [
        // Order number widget shimmer
        BuildShimmerItem(
          child: Container(
            padding: Dimens.paddingVertical12PX,
            margin: const EdgeInsets.only(bottom: 17),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: context.colors.gray3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildShimmerItem(
                  height: 20,
                  width: 80,
                  child: Container(
                    color: context.colors.grey,
                  ),
                ),
                Gaps.hGap5,
                BuildShimmerItem(
                  height: 20,
                  width: 100,
                  child: Container(
                    color: context.colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        Gaps.vGap17,
        // Track order items shimmer
        ...List.generate(
            4, (index) => _buildTrackOrderItemShimmer(context, index)),
      ],
    );
  }

  Widget _buildTrackOrderItemShimmer(BuildContext context, int index) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            // Circle icon shimmer
            BuildShimmerItem(
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: context.colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // Line shimmer (except for last item)
            if (index < 3)
              BuildShimmerItem(
                child: Container(
                  width: 3,
                  height: 80,
                  color: context.colors.grey,
                ),
              ),
          ],
        ),
        Gaps.hGap10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BuildShimmerItem(
              height: 16,
              width: 120,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            Gaps.vGap5,
            // Date text shimmer
            const BuildShimmerItem(
              height: 16,
              width: 150,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            Gaps.vGap25,
          ],
        )
      ],
    );
  }
}
