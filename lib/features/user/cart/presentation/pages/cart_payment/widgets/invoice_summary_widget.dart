part of 'cart_payment_widgets_imports.dart';

class InvoiceSummaryWidget extends StatelessWidget {
  final CartPaymentController controller;
  final Shipping shipping;
  final String giftCardTotal;
  final bool applyGiftCard;

  const InvoiceSummaryWidget({
    super.key,
    required this.controller,
    required this.shipping,
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
            details: shipping.summary.subTotal,
          ),
          BuildSummaryHeader(
            title: tr('tax'),
            details: shipping.summary.tax,
          ),
          BuildSummaryHeader(
            title: tr('shippingFees'),
            details: shipping.summary.shipping,
          ),
              Visibility(
                visible: applyGiftCard,
                replacement: Visibility(
                  visible: shipping.summary.couponApplied == true || shipping.summary.loyaltyPointsApplied==true,
                    child: BuildSummaryHeader(
                      title: shipping.summary.loyaltyPointsApplied == true
                          ? "Points Discount"
                          :tr("voucherDiscount"),
                      details: shipping.summary.loyaltyPointsApplied == true
                          ? "${shipping.summary.loyaltyPointsValue} "
                          :shipping.summary.couponDiscount,
                      detailsColor: context.colors.primary,
                    ),
                ),
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
                :shipping.summary.total,
            // isTotal: true,
          ),
        ]
        )
      ],
    );
  }
}
