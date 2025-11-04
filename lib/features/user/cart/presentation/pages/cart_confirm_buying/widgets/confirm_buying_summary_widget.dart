part of 'cart_confirm_buying_widgets_imports.dart';


class ConfirmBuyingSummaryWidget extends StatelessWidget {
  final OrderSummary orderSummary;
  final ConfirmBuyingController controller;
  const ConfirmBuyingSummaryWidget({super.key, required this.orderSummary, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InvoiceSummaryCard(margin: Dimens.paddingHorizontal20PX, children: [
      BuildSummaryHeader(
        title: tr('subTotal'),
        details: orderSummary.subTotal.toString(),
        // details: orderSummary.getSubTotalWithoutVat().toStringAsFixed(2),
        useDirhamPrice: true,
      ),
      BuildSummaryHeader(
        title: tr('vat'),
        details: orderSummary.tax.toString(),
        useDirhamPrice: true,
      ),
      BuildSummaryHeader(
        title: tr('service_fees'),
        details: orderSummary.totalServiceFees.toStringAsFixed(2),
        useDirhamPrice: true,
        onPressInfo: ()=> controller.showFeesSheet(context),
      ),
      // BuildSummaryHeader(
      //   title: "Environment Fees",
      //   details: orderSummary.totalServiceFees.toStringAsFixed(2),
      //   useDirhamPrice: true,
      //   onPressInfo: ()=> controller.showFeesSheet(context),
      // ),
      BuildSummaryHeader(
        title: tr('shippingFees'),
        details: orderSummary.shippingTotal.toString(),
        useDirhamPrice: true,
        onPressInfo: ()=>controller.showDeliveryFeesSheet(context),
      ),
      Gaps.vGap8,
      Row(
        children: [
          Expanded(
            child: Text(
              tr("gained_bezat_point"),
              style: AppTextStyle.s14_w400(color: context.colors.black),
            ),
          ),
          Text(
            "${orderSummary.summary!.expectedLoyaltyPoints ?? 0}",
            // shippingSummary.gainedBezatPoints().toStringAsFixed(2),
            style: AppTextStyle.s14_w600(color: context.colors.black),
          ),
        ],
      ),
      Gaps.vGap8,
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
