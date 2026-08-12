part of '../instore_checkout_imports.dart';

class InstoreInvoiceSummaryWidget extends StatelessWidget {
  final InstoreCheckoutController controller;
  final bool showAppliedGiftCard;
  final String? appliedGiftCardAmount;

  const InstoreInvoiceSummaryWidget({
    super.key,
    required this.controller,
    this.showAppliedGiftCard = false,
    this.appliedGiftCardAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InstoreCheckoutSectionTitleWidget(title: tr('invoiceSummary')),
        Gaps.vGap6,
        InvoiceSummaryCard(
          radius: const BorderRadius.vertical(top: Radius.circular(12)),
          children: [
            InstoreSummaryHeaderWidget(
              title: tr('subTotal'),
              details: controller.summary!.subtotal,
            ),
            Visibility(
              visible: controller.summary!.couponApplied || controller.summary!.loyaltyPointsApplied,
              child: InstoreSummaryHeaderWidget(
                isDiscount: true,
                applyDashSeperate: false,
                title: controller.summary!.loyaltyPointsApplied
                    ? tr('pointsDiscount')
                    : tr('voucherDiscount'),
                details: controller.summary!.loyaltyPointsApplied
                    ? '-${controller.summary!.loyaltyPointsValue}'
                    : '-${controller.summary!.couponDiscount}',
                detailsColor: context.colors.primary,
              ),
            ),
            if (controller.summary!.orderDiscounts.isNotEmpty)
              Column(
                spacing: 16,
                children: List.generate(controller.summary!.orderDiscounts.length, (index) {
                  final item = controller.summary!.orderDiscounts[index];
                  return InstoreSummaryHeaderWidget(
                    isDiscount: true,
                    applyDashSeperate: false,
                    title: item.label,
                    details: item.discount,
                    detailsColor: context.colors.primary,
                  );
                }),
              ),
            InstoreSummaryHeaderWidget(
              title: tr('service_fees'),
              details: _getServiceFees(),
              onPressInfo: () => controller.showFeesSheet(context),
            ),
            // InstoreSummaryHeaderWidget(
            //   title: '${tr('environmentFee')} ( 0x ${tr('bags')} )',
            //   details: controller.summary!.technologyFees,
            //   onPressInfo: () => controller.showEnvFeesSheet(context),
            // ),
            Gaps.vGap3,
            InstoreSummaryHeaderWidget(
              title: tr('totalVat'),
              details: _getTotalVat(),
              vMargin: 0,
            ),
            if (showAppliedGiftCard && appliedGiftCardAmount != null)
              InstoreSummaryHeaderWidget(
                title: tr('appliedGiftCard'),
                details: appliedGiftCardAmount!,
                detailsColor: context.colors.primary,
                isDiscount: true,
              ),
            Gaps.line(context.colors.softGray, 15),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    tr('total'),
                    style: AppTextStyle.s14_w400(color: context.colors.black),
                  ),
                  DirhamPrice(
                    amount: controller.getTotal(),
                    textStyle:
                        AppTextStyle.s14_w800(color: context.colors.black),
                    currencyStyle:
                        AppTextStyle.s18_w400(color: context.colors.black),
                    currencyOffset: 0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }



  String _getServiceFees(){
    double service = double.tryParse(controller.summary!.serviceFees) ?? 0;
    double tech = double.tryParse(controller.summary!.technologyFees) ?? 0;
    return (service + tech).toStringAsFixed(2);
  }

  String _getTotalVat(){
    var vatOnSubTotal = double.parse(controller.summary!.tax);
    var vatOnFees = double.parse(controller.summary!.vatFeeAmount);
    return (vatOnSubTotal+vatOnFees).toStringAsFixed(2);
  }


}
