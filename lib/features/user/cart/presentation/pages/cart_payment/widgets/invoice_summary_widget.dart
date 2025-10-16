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
            title: tr('totalItems'),
            details: shippingSummary.subTotal,
            useDirhamPrice: true,
          ),
          BuildSummaryHeader(
            title: tr('tax'),
            details: shippingSummary.tax,
            useDirhamPrice: true,
          ),
          BuildSummaryHeader(
            title: tr('shippingFees'),
            details: shippingSummary.shipping,
            useDirhamPrice: true,
          ),
              Visibility(
                  visible: shippingSummary.couponApplied == true || shippingSummary.loyaltyPointsApplied==true,
                    child: BuildSummaryHeader(
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
