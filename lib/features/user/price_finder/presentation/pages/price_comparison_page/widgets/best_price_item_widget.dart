part of 'widgets_imports.dart';

class BestPriceItemWidget extends StatelessWidget {
  final PriceComparisonController controller;
  final PriceFinderDeal deal;

  const BestPriceItemWidget({super.key, required this.controller, required this.deal});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DirhamPrice(
          amount: deal.price.toStringAsFixed(2),
          textStyle: AppTextStyle.s32_w700(
            color: context.colors.darkGreen3,
          ),
        ),
        GestureDetector(
          onTap: () => controller.addProductToCart(context, deal.variantId, deal.branchId),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
            decoration: BoxDecoration(
              color: context.colors.darkGreen3,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                SvgPicture.asset(Res.shopIcon),
                Gaps.hGap8,
                Text(
                  'Add to Cart',
                  style: AppTextStyle.s12_w700(
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
