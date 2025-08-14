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
        const CartPaymentSectionTitleWidget(title: "Invoice Summary"),
        Gaps.vGap6,
        InvoiceSummaryCard(
            children: [
          BuildSummaryHeader(
            title: tr('totalItems'),
            details: shippingSummary.subTotal,
          ),
          BuildSummaryHeader(
            title: tr('tax'),
            details: shippingSummary.tax,
          ),
          BuildSummaryHeader(
            title: tr('shippingFees'),
            details: shippingSummary.shipping,
          ),
              Visibility(
                  visible: shippingSummary.couponApplied == true || shippingSummary.loyaltyPointsApplied==true,
                    child: BuildSummaryHeader(
                      title: shippingSummary.loyaltyPointsApplied == true
                          ? "Points Discount"
                          :tr("voucherDiscount"),
                      details: shippingSummary.loyaltyPointsApplied == true
                          ? "${shippingSummary.loyaltyPointsValue} "
                          :shippingSummary.couponDiscount,
                      detailsColor: context.colors.primary,
                    ),
                ),
              Visibility(
                visible: applyGiftCard,
                child: BuildSummaryHeader(
                  title: "Applied Gift Card",
                  details: "-$giftCardTotal",
                  detailsColor: context.colors.primary,
                ),
              ),

          Gaps.line(context.colors.softGray, 15.h),
          BuildSummaryHeader(
            title: tr("total"),
            details: applyGiftCard
                ?"0.00"
                :shippingSummary.total,
            // isTotal: true,
          ),
        ]
        )
      ],
    );
  }
}
