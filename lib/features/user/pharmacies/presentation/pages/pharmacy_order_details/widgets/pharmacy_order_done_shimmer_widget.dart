part of 'widgets_imports.dart';

class PharmacyOrderDoneShimmerWidget extends StatelessWidget {
  const PharmacyOrderDoneShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20PX,
      margin: const EdgeInsets.only(top: 43),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius10PX.copyWith(
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
        ),
      ),
      child: Column(
        children: [
          Gaps.vGap20,
          BuildShimmerItem(
            height: 28,
            width: 200,
            borderRadius: Dimens.borderRadius10PX,
          ),
          Gaps.vGap10,
          BuildShimmerItem(
            height: 60,
            borderRadius: Dimens.borderRadius10PX,
          ),
          Gaps.vGap20,
          BuildShimmerItem(
            height: 20,
            width: 100,
            borderRadius: Dimens.borderRadius10PX,
          ),
          Gaps.vGap10,
          BuildShimmerItem(
            height: 35,
            width: 120,
            borderRadius: Dimens.borderRadius10PX,
          ),
          Gaps.vGap20,
          BuildShimmerItem(
            height: 40,
            borderRadius: Dimens.borderRadius30PX,
          ),
          Gaps.vGap20,
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
                        height: 20,
                        width: 100,
                        borderRadius: Dimens.borderRadius10PX,
                      ),
                      const Spacer(),
                      BuildShimmerItem(
                        height: 20,
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
        ],
      ),
    );
  }
}
