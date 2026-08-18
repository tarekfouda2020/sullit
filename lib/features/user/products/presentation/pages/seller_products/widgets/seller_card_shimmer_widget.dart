part of 'seller_products_widgets_imports.dart';

class SellerCardShimmerWidget extends StatelessWidget {
  const SellerCardShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              const BuildShimmerItem(
                height: 150,
                borderRadius: Dimens.topRadius12Px,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(23, 11, 21, 23),
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: Dimens.bottomRadius12Px,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        BuildShimmerItem(width: 80, height: 15),
                      ],
                    ),
                    Gaps.vGap14,
                    const BuildShimmerItem(width: 160, height: 18),
                    Gaps.vGap8,
                    const BuildShimmerItem(width: 100, height: 14),
                  ],
                ),
              ),
            ],
          ),
          const PositionedDirectional(
            start: 10,
            top: 120,
            child: BuildShimmerItem(
              width: Dimens.dp66,
              height: Dimens.dp66,
              borderRadius: BorderRadius.all(Radius.circular(66)),
            ),
          ),
        ],
      ),
    );
  }
}
