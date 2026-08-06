part of 'product_details_widgets_imports.dart';

class CustomizeOrderItemWidget extends StatelessWidget {
  const CustomizeOrderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: Dimens.standardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap10,
            Text(
              tr('Select Box Size'),
              style: AppTextStyle.s18_w600(
                color: context.colors.black,
              ),
            ),
            Gaps.vGap8,
            ...List.generate(
              3,
              (index) => const CustomizeRadioItem(),
            ),
            Gaps.vGap16,
            Text(
              tr('Customize Your Order'),
              style: AppTextStyle.s18_w600(
                color: context.colors.black,
              ),
            ),
            Gaps.vGap8,
            const CustomizeCheckItemWidget(
              title: 'Extra Garlic Sauce',
              price: "+  0.50",
            ),
            const CustomizeCheckItemWidget(
              title: 'Extra Pickles',
              price: "+  0.30",
            ),
            const CustomizeCheckItemWidget(
              title: 'Extra Garlic Sauce',
            ),
            const CustomizeCheckItemWidget(
              title: 'No Onions',
            ),
            const CustomizeCheckItemWidget(
              title: 'Add Cheese',
            ),
            const CustomizeCheckItemWidget(
              title: 'Make it Spicy',
            ),
            Gaps.vGap12,
          ],
        ),
      ),
    );
  }
}
