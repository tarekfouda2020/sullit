part of 'widgets_imports.dart';

class PharmacyConfirmSummaryShimmerWidget extends StatelessWidget {
  const PharmacyConfirmSummaryShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  children: [
                    BuildShimmerItem(
                      height: 16,
                      width: 100,
                      borderRadius: Dimens.borderRadius10PX,
                    ),
                    const Spacer(),
                    BuildShimmerItem(
                      height: 16,
                      width: 100,
                      borderRadius: Dimens.borderRadius10PX,
                    ),
                  ],
                ),
                Gaps.vGap10,
              ],
            );
          },
        ),
        Gaps.vGap20,
        BuildShimmerItem(
          height: 20,
          borderRadius: Dimens.borderRadius10PX,
        ),
      ],
    );
  }
}
