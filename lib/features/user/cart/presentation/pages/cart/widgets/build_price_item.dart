part of 'cart_widgets_imports.dart';

class BuildPriceItem extends StatelessWidget {
  final String title;
  final String price;
  final String currency;

  const BuildPriceItem(
      {super.key,
      required this.title,
      required this.price,
      required this.currency});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyle.s15_w500(color: context.colors.black),
        ),
        Gaps.vGap5,
        Row(
          children: [
            Text(
              price,
              style: AppTextStyle.s14_w500(color: context.colors.black),
            ),
          ],
        )
      ],
    );
  }
}
