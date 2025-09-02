part of 'order_details_widgets_imports.dart';

class OrderSummaryItemWidget extends StatelessWidget {
  final String priceType;
  final String price;
  final Color? priceColor;

  const OrderSummaryItemWidget({
    super.key,
    required this.priceType,
    required this.price,
    this.priceColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            priceType,
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        ),
        Text(
          price,
          style: AppTextStyle.s14_w600(color: priceColor ?? context.colors.black),
        )
      ],
    );
  }
}
