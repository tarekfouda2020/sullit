part of 'cart_payment_widgets_imports.dart';

class InvoiceSummaryWidget extends StatelessWidget {
  final CartPaymentController controller;
  final Shipping shipping;
  const InvoiceSummaryWidget({super.key, required this.controller, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CartPaymentSectionTitleWidget(title: "Invoice Summary"),
        Gaps.vGap6,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 18),
          decoration: CustomDecoration(
            myBoxShadow:const [],
            boxBorder: Border.all(color: context.colors.borderColor)
          ),
          child: Column(
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
                visible: shipping.isAdminDiscount == true,
                child: BuildSummaryHeader(
                  title: tr("voucherDiscount"),
                  details: "${shipping.discountVal} ${tr("currencyCode")} ",
                  detailsColor: context.colors.primary,
                ),
              ),
              Gaps.line(context.colors.softGray, 15.h),
              BuildSummaryHeader(
                title: tr("total"),
                details: shipping.summary.total,
                // isTotal: true,
              ),
            ],
          ),
        )
      ],
    );
  }
}
