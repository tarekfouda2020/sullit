part of 'order_details_widgets_imports.dart';

class OrderDetailsTotalWidget extends StatelessWidget {
  final OrderDisplayItem displayItem;

  const OrderDetailsTotalWidget({
    super.key,
    required this.displayItem,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          tr("total"),
          style: AppTextStyle.s14_w400(color: context.colors.black),
        ),
        Text(
          " :",
          style: AppTextStyle.s14_w400(color: context.colors.black),
        ),
        Gaps.hGap5,
        Text(
          (displayItem.quantity * displayItem.price)
              .toStringAsFixed(2)
              .formatAmount(),
          style: AppTextStyle.s14_w600(color: context.colors.primary),
        ).withDirhamSymbol(),
      ],
    );
  }
}
