part of 'widgets_imports.dart';

class BestDealCardItemWidget extends StatelessWidget {
  final PriceFinderDeal deal;

  const BestDealCardItemWidget({super.key, required this.deal});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
        color: context.colors.disableBlack,
        borderRadius: Dimens.borderRadius30PX,
        border: Border.all(
          color: context.colors.darkGreen2,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: context.colors.darkGreen3,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    Res.offerIcon,
                  ),
                ),
                Gaps.hGap8,
                Text(
                  'LOWEST PRICE',
                  style: AppTextStyle.s12_w400(
                    color: context.colors.darkGreen3,
                  ),
                ),
              ],
            ),
          ),
          Gaps.hGap8,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: context.colors.darkGreen4,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.trending_down,
                  color: context.colors.darkGreen3,
                  size: 12,
                ),
                Gaps.hGap4,
                Text(
                  'Save',
                  style: AppTextStyle.s11_w400(
                    color: context.colors.white,
                  ),
                ),
                Gaps.hGap4,
                DirhamPrice(
                  amount: deal.savings.toStringAsFixed(2),
                  textStyle: AppTextStyle.s11_w400(
                    color: context.colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
