part of 'imports.dart';

class PriceFinderHeaderWidget extends StatelessWidget {
  const PriceFinderHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: context.colors.lightGreen3,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: context.colors.darkGreen),
          ),
          child: Text(
            'Real-time Grocery Comparison',
            style: AppTextStyle.s10_w700(color: context.colors.darkGreen),
          ),
        ),
        Gaps.vGap14,
        Text(
          tr('priceFinder'),
          style: AppTextStyle.s22_w700(color: context.colors.black),
        ),
        Gaps.vGap6,
        Text(
          tr('findTheBestPriceForAnyProductNearYou.'),
          style: AppTextStyle.s14_w400(color: context.colors.textColor),
        ),
      ],
    );
  }
}
