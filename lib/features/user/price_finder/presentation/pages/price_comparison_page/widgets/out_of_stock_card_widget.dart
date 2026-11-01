part of 'widgets_imports.dart';

class OutOfStockCardWidget extends StatelessWidget {
  const OutOfStockCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        Gaps.vGap15,
        Icon(
          Icons.remove_shopping_cart_outlined,
          size: 40,
          color: context.colors.redAccent,
        ),
        Text(
          tr("outOfStock"),
          style: AppTextStyle.s18_w700(
            color: context.colors.black,
          ),
        ),
        Text(
          tr("noBestDealAvailable"),
          textAlign: TextAlign.center,
          style: AppTextStyle.s15_w400(
            color: context.colors.textColor,
          ),
        ),
        Gaps.vGap20,
      ],
    );
  }
}
