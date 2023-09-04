part of 'cart_payment_widgets_imports.dart';

class BuildSummary extends StatelessWidget {
final CartPaymentController controller;
final Shipping shipping ;

  const BuildSummary({super.key, required this.controller, required this.shipping});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.dp15),
      decoration: BoxDecoration(
        color: context.colors.greyWhite.withOpacity(.1),
        borderRadius: Dimens.borderRadius10PX,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Summary",
                style: AppTextStyle.s16_w800(color: context.colors.black),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: context.colors.primary,
                    borderRadius: Dimens.borderRadius5PX),
                child: Text(
                  "${shipping.summary.items.length} items",
                  style: AppTextStyle.s14_w400(color: context.colors.white),
                ),
              )
            ],
          ),
          Gaps.line(context.colors.primary, 20),
          const BuildSummaryHeader(title: "Products", details: "Total"),
          ...List.generate(
              shipping.summary.items.length,
              (index) => BuildSummaryItem(
                  title: shipping.summary.items[index].name,
                  details: shipping.summary.items[index].total)),
          BuildSummaryHeader(
              title: "Subtotal", details: shipping.summary.subTotal),
          BuildSummaryHeader(
            title: "Tax",
            details: shipping.summary.tax,
          ),
          BuildSummaryHeader(
            title: "Total Shipping",
            details: shipping.summary.shipping,
          ),
          Gaps.line(context.colors.primary, 20),
          BuildSummaryHeader(
            title: "Total",
            details: shipping.summary.total,
            // isTotal: true,
          ),
          BuildCoupon(controller: controller),
        ],
      ),
    );
  }
}
