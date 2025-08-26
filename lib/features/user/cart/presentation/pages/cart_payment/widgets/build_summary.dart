part of 'cart_payment_widgets_imports.dart';

class BuildSummary extends StatelessWidget {
  final CartPaymentController controller;
  final Shipping shipping;

  const BuildSummary(
      {super.key, required this.controller, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      decoration: CustomDecoration(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tr('summary'),
                style: AppTextStyle.s16_w800(color: context.colors.black),
              ),
              Container(
                padding: Dimens.paddingAll5PX,
                decoration: BoxDecoration(
                    color: context.colors.primary,
                    borderRadius: Dimens.borderRadius5PX),
                child: Text(
                  "${shipping.summary.items.length} ${shipping.summary.items.isNotEmpty ? tr('items') : ''}",
                  style: AppTextStyle.s14_w400(color: context.colors.white),
                ),
              )
            ],
          ),
          Gaps.line(context.colors.primary, 20.h),
          BuildSummaryHeader(title: tr('products'), details: tr('total')),
          ...List.generate(
            shipping.summary.items.length,
            (index) => BuildSummaryItem(
              title: shipping.summary.items[index].name,
              details: shipping.summary.items[index].total,
            ),
          ),
          BuildSummaryHeader(
            title: tr('subTotal'),
            details: shipping.summary.subTotal,
          ),
          BuildSummaryHeader(
            title: tr('tax'),
            details: shipping.summary.tax,
          ),
          BuildSummaryHeader(
            title: tr('totalShipping'),
            details: shipping.summary.shipping,
          ),
          Visibility(
            visible: shipping.isAdminDiscount == true,
            child: BuildSummaryHeader(
              title: tr("discount"),
              details: "${shipping.discountVal} ${tr("currency")} ",
            ),
          ),
          Gaps.line(context.colors.primary, 15.h),
          BuildSummaryHeader(
            title: tr("total"),
            details: shipping.summary.total,
            // isTotal: true,
          ),
          // BuildCoupon(controller: controller),
        ],
      ),
    );
  }
}
