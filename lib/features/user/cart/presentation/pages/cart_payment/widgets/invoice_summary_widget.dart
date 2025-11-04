part of 'cart_payment_widgets_imports.dart';

class InvoiceSummaryWidget extends StatelessWidget {
  final CartPaymentController controller;
  final ShippingSummary shippingSummary;
  final String giftCardTotal;
  final bool applyGiftCard;

  const InvoiceSummaryWidget({
    super.key,
    required this.controller,
    required this.shippingSummary,
     this.giftCardTotal = "",
     this.applyGiftCard = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CartPaymentSectionTitleWidget(title: tr("invoiceSummary")),
        Gaps.vGap6,
        InvoiceSummaryCard(
            children: [
          BuildSummaryHeader(
            title: tr('subTotal'),
            details: shippingSummary.subTotal,
            // details: shippingSummary.getSubTotalWithoutVat().toStringAsFixed(2),
            useDirhamPrice: true,
          ),
          BuildSummaryHeader(
            title: tr('vat'),
            // details: shippingSummary.vatAmount().toStringAsFixed(2),
            details: shippingSummary.tax,
            useDirhamPrice: true,
           ),
              BuildSummaryHeader(
                title: tr('service_fees'),
                details: shippingSummary.getTotalServiceAmount().toStringAsFixed(2),
                useDirhamPrice: true,
                onPressInfo: ()=> controller.showFeesSheet(context),
              ),
              BuildSummaryHeader(
                title: "Environment Fees",
                details: shippingSummary.getTotalServiceAmount().toStringAsFixed(2),
                useDirhamPrice: true,
                onPressInfo: ()=> controller.showFeesSheet(context),
              ),
              // BuildSummaryHeader(
              //   title: tr('technology_fees'),
              //   details: shippingSummary.technologyFees,
              //   useDirhamPrice: true,
              //   onPressInfo: ()=> controller.showTechFeesSheet(context),
              // ),
              // BuildSummaryHeader(
              //   title: tr('technology_fees'),
              //   details: shippingSummary.technologyFees,
              //   useDirhamPrice: true,
              // ),
          BuildSummaryHeader(
            title: tr('shippingFees'),
            details: shippingSummary.shipping,
            useDirhamPrice: true,
            onPressInfo: ()=> controller.showDeliveryFeesSheet(context),
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
                    shippingSummary.expectedLoyaltyPoints.toString(),
                    // shippingSummary.gainedBezatPoints().toStringAsFixed(2),
                    style: AppTextStyle.s14_w600(color: context.colors.black),
                  ),
                ],
              ),
              Gaps.vGap8,
              Visibility(
                  visible: shippingSummary.couponApplied == true || shippingSummary.loyaltyPointsApplied==true,
                    child: BuildSummaryHeader(
                      isDiscount: true,
                      applyDashSeperate: false,
                      title: shippingSummary.loyaltyPointsApplied == true
                          ? tr("pointsDiscount")
                          :tr("voucherDiscount"),
                      details: shippingSummary.loyaltyPointsApplied == true
                          ? "-${shippingSummary.loyaltyPointsValue} "
                          :"-${shippingSummary.couponDiscount}",
                      detailsColor: context.colors.primary,
                      useDirhamPrice: true,
                    ),
                ),
          Visibility(
            visible: applyGiftCard,
            child: BuildSummaryHeader(
              title: tr("appliedGiftCard"),
              details: shippingSummary.appliedGiftCard ?? "",
              detailsColor: context.colors.primary,
              useDirhamPrice: true,
              isDiscount: true,
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
                  amount: applyGiftCard ? "0.00" : shippingSummary.total,
                  textStyle: AppTextStyle.s14_w800(color:context.colors.black),
                  currencyStyle: AppTextStyle.s18_w400(color:context.colors.black),
                  currencyOffset: 0,
                ),
              ],
            ),
          ),
        ])
      ],
    );
  }
}
