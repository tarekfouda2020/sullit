part of 'cart_confirm_buying_widgets_imports.dart';


class ConfirmBuyingSummaryWidget extends StatelessWidget {
  final OrderSummary orderSummary;
  final ConfirmBuyingController controller;
  const ConfirmBuyingSummaryWidget({super.key, required this.orderSummary, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InvoiceSummaryCard(margin: Dimens.paddingHorizontal20PX, children: [
      BuildSummaryHeader(
        title: tr('totalItems'),
        details: orderSummary.subTotal.toString(),
        useDirhamPrice: true,
      ),
      BuildSummaryHeader(
        title: tr('vat'),
        details: orderSummary.tax.toString(),
        useDirhamPrice: true,
      ),
      BuildSummaryHeader(
        title: tr('service_fees'),
        details: orderSummary.serviceFees.toString(),
        useDirhamPrice: true,
        onPressInfo: ()=> controller.showFeesSheet(context),
      ),
      BuildSummaryHeader(
        title: tr('technology_fees'),
        details: orderSummary.techFees.toString(),
        useDirhamPrice: true,
        onPressInfo: ()=> controller.showFeesSheet(context),
      ),
      BuildSummaryHeader(
        title: tr('shippingFees'),
        details: orderSummary.shippingTotal.toString(),
        useDirhamPrice: true,
        onPressInfo: ()=>controller.showDeliveryFeesSheet(context),
      ),
      Visibility(
        visible: orderSummary.loyaltyPointsDiscount > 0 || orderSummary.discounts > 0,
        child: BuildSummaryHeader(
          title: orderSummary.loyaltyPointsDiscount > 0 ? tr("pointsDiscount") : tr("voucherDiscount"),
          details: orderSummary.loyaltyPointsDiscount > 0
              ? orderSummary.loyaltyPointsDiscount.toString()
              : orderSummary.discounts.toString(),
          detailsColor: context.colors.primary,
          useDirhamPrice: true,
        ),
      ),
      Gaps.line(context.colors.softGray, 15.h),
      Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tr("total"),
                style: AppTextStyle.s14_w400(color: context.colors.black),
              ),
              DirhamPrice(
                amount: orderSummary.total.toString(),
                textStyle: AppTextStyle.s14_w800(color: context.colors.black),
              ),
            ],
          )),
    ]);
  }
}
