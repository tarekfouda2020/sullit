part of 'cart_confirm_buying_widgets_imports.dart';


class ConfirmBuyingSummaryWidget extends StatelessWidget {
  final OrderSummary orderSummary;
  const ConfirmBuyingSummaryWidget({super.key, required this.orderSummary});

  @override
  Widget build(BuildContext context) {
    return  InvoiceSummaryCard(
        margin: Dimens.paddingHorizontal20PX,
        children: [
          BuildSummaryHeader(
            title: tr('totalItems'),
            details: "${orderSummary.subTotal.toString()}${tr("currencyCode")}",
          ),
          BuildSummaryHeader(
            title: tr('tax'),
            details: "${orderSummary.tax.toString()}${tr("currencyCode")}",
          ),
          BuildSummaryHeader(
            title: tr('shippingFees'),
            details: "${orderSummary.shippingTotal.toString()}${tr("currencyCode")}",
          ),
          Visibility(
            visible: orderSummary.loyaltyPointsDiscount>0 || orderSummary.discounts > 0,
            child: BuildSummaryHeader(
              title: orderSummary.loyaltyPointsDiscount >0
                  ? tr("pointsDiscount")
                  :tr("voucherDiscount"),
              details: orderSummary.loyaltyPointsDiscount>0
                  ? "${orderSummary.loyaltyPointsDiscount}${tr("currencyCode")}"
                  :"${orderSummary.discounts}${tr("currencyCode")}",
              detailsColor: context.colors.primary,
            ),
          ),
          Gaps.line(context.colors.softGray, 15.h),
          BuildSummaryHeader(
            title: tr("total"),
            details: "${orderSummary.total}${tr("currencyCode")}",
            // isTotal: true,
          ),
        ]);
  }
}
