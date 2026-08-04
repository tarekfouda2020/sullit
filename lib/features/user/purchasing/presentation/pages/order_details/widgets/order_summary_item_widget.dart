part of 'order_details_widgets_imports.dart';

class OrderSummaryItemWidget extends StatelessWidget {
  final String priceType;
  final String price;
  final Color? priceColor;
  final bool useDirhamPrice;
  final bool isDiscount;

  const OrderSummaryItemWidget({
    super.key,
    required this.priceType,
    required this.price,
    this.priceColor,
    this.useDirhamPrice = false,
    this.isDiscount = false,
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
        if (isDiscount)
          Text(
            " - ",
            style: AppTextStyle.s14_w600(color: context.colors.primary),
          ),
        useDirhamPrice
            ? DirhamPrice(
                amount: price,
                currencyStyle: AppTextStyle.s16_w400(
                    color: priceColor ?? context.colors.black),
                textStyle: AppTextStyle.s14_w600(
                    color: priceColor ?? context.colors.black),
              )
            : Text(
                price,
                style: AppTextStyle.s14_w600(
                    color: priceColor ?? context.colors.black),
              )
      ],
    );
  }
}
