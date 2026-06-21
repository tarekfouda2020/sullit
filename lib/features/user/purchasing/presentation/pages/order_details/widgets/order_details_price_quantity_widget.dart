part of 'order_details_widgets_imports.dart';

class OrderDetailsPriceQuantityWidget extends StatelessWidget {
  final OrderDisplayItem displayItem;

  const OrderDetailsPriceQuantityWidget({
    super.key,
    required this.displayItem,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (displayItem.isModifiedInPlace &&
                  displayItem.history!.isUpdatePrice)
                Text(
                  displayItem.history!.oldPrice.formatAmount(),
                  style: AppTextStyle.s12_w400(
                          color: context.colors.textColor)
                      .copyWith(
                          decoration: TextDecoration.lineThrough),
                ).withDirhamSymbol(),
              DirhamPrice(
                amount: displayItem.price.toString().formatAmount(),
                textStyle: AppTextStyle.s14_w600(
                    color: context.colors.primary),
                currencyStyle: AppTextStyle.s16_w400(
                    color: context.colors.primary),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (displayItem.isModifiedInPlace &&
                displayItem.history!.isReduce)
              Row(
                children: [
                  Text(
                    tr("qnt"),
                    style: AppTextStyle.s12_w400(
                            color: context.colors.textColor)
                        .copyWith(
                            decoration:
                                TextDecoration.lineThrough),
                  ),
                  Text(
                    displayItem.history!.oldQuantity
                        .toString()
                        .formatAmount(),
                    style: AppTextStyle.s12_w600(
                            color: context.colors.textColor)
                        .copyWith(
                            decoration:
                                TextDecoration.lineThrough),
                  ),
                ],
              ),
            Row(
              children: [
                Text(
                  tr("qnt"),
                  style: AppTextStyle.s14_w400(
                      color: context.colors.black),
                ),
                Text(
                  displayItem.quantity
                      .toString()
                      .formatAmount(),
                  style: AppTextStyle.s14_w600(
                      color: context.colors.black),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
