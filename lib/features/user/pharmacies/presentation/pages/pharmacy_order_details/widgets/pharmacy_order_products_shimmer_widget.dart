part of 'widgets_imports.dart';

class PharmacyOrderProductsShimmerWidget extends StatelessWidget {
  const PharmacyOrderProductsShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          padding: Dimens.paddingH17V13,
          margin: const EdgeInsets.only(bottom: 8),
          decoration: CustomDecoration(
            boxBorder: Border.all(color: context.colors.gray3),
            myBoxShadow: const [],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildShimmerItem(
                height: 46,
                width: 46,
                borderRadius: BorderRadius.circular(5),
              ),
              Gaps.hGap11,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BuildShimmerItem(
                        height: 16,
                        width: 150,
                        borderRadius: Dimens.borderRadius10PX,
                      ),
                      Gaps.vGap5,
                      BuildShimmerItem(
                        height: 10,
                        width: 80,
                        borderRadius: Dimens.borderRadius10PX,
                      ),
                      Gaps.vGap7,
                      BuildShimmerItem(
                        height: 20,
                        width: 100,
                        borderRadius: Dimens.borderRadius10PX,
                      ),
                      Gaps.vGap10,
                      BuildShimmerItem(
                        height: 16,
                        borderRadius: Dimens.borderRadius10PX,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
