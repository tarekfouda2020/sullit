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
            radius: const BorderRadius.vertical(top: Radius.circular(12)),
            children: [
              BuildSummaryHeader(
                title: tr('subTotal'),
                details: shippingSummary.subTotal,
                // details: shippingSummary.getSubTotalWithoutVat().toStringAsFixed(2),
                useDirhamPrice: true,
              ),
              Visibility(
                visible: shippingSummary.couponApplied == true ||
                    shippingSummary.loyaltyPointsApplied == true,
                child: BuildSummaryHeader(
                  isDiscount: true,
                  applyDashSeperate: false,
                  title: shippingSummary.loyaltyPointsApplied == true
                      ? tr("pointsDiscount")
                      : tr("voucherDiscount"),
                  details: shippingSummary.loyaltyPointsApplied == true
                      ? "-${shippingSummary.loyaltyPointsValue} "
                      : "-${shippingSummary.couponDiscount}",
                  detailsColor: context.colors.primary,
                  useDirhamPrice: true,
                ),
              ),
              Visibility(
                  visible: shippingSummary.showOrderDiscounts,
                  child: Column(
                    spacing: 16,
                    children: List.generate(
                      shippingSummary.discountTypes?.length ?? 0,
                      (index) {
                        OrderSummaryDiscountDomain? item =
                            shippingSummary.discountTypes?[index];
                        return BuildSummaryHeader(
                          isDiscount: true,
                          applyDashSeperate: false,
                          title: item?.label ?? "",
                          details: item?.discount ?? "",
                          detailsColor: context.colors.primary,
                          useDirhamPrice: true,
                          onPressInfo: item?.isTierDiscount == true
                              ? () => controller.showTierFullName(context,
                                  item?.description ?? "", item?.label ?? "")
                              : null,
                        );
                      },
                    ),
                  )),
              BuildSummaryHeader(
                title: tr('service_fees'),
                details:
                    shippingSummary.getTotalServiceAmount().toStringAsFixed(2),
                useDirhamPrice: true,
                onPressInfo: () => controller.showFeesSheet(context),
              ),
              BuildSummaryHeader(
                title:
                    "${tr("environmentFee")} ( ${shippingSummary.bagsCount}x ${tr("bags")} )",
                details: shippingSummary.environmentFees,
                useDirhamPrice: true,
                onPressInfo: () => controller.showEnvFeesSheet(context),
              ),
              BuildSummaryHeader(
                title: tr('shippingFees'),
                details: shippingSummary.shipping,
                useDirhamPrice: true,
                onPressInfo: () => controller.showDeliveryFeesSheet(context),
              ),
              Gaps.vGap3,
              BuildSummaryHeader(
                title: tr('totalVat'),
                details: shippingSummary.getTotalVat(),
                useDirhamPrice: true,
                vMargin: 0,
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
                      amount: controller.getTotal().toStringAsFixed(2),
                      textStyle:
                          AppTextStyle.s14_w800(color: context.colors.black),
                      currencyStyle:
                          AppTextStyle.s18_w400(color: context.colors.black),
                      currencyOffset: 0,
                    ),
                  ],
                ),
              ),
            ]),
        // OrderGrandTotalWidget(amount: applyGiftCard ? "0.00" : shippingSummary.total,)
      ],
    );
  }
}
