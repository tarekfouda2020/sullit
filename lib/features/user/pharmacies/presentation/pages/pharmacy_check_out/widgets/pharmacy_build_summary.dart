part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyBuildSummary extends StatelessWidget {
  final PharmacyCheckOutController controller;
  final Shipping shipping;

  const PharmacyBuildSummary(
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
          PharmacyBuildSummaryHeader(
              title: tr('products'), details: tr('total')),
          ...List.generate(
            shipping.summary.items.length,
            (index) => PharmacyBuildSummaryItem(
              title: shipping.summary.items[index].name,
              details: shipping.summary.items[index].total,
              useDirhamPrice: true,
            ),
          ),
          PharmacyBuildSummaryHeader(
            title: tr('subTotal'),
            details: shipping.summary.subTotal,
            useDirhamPrice: true,
          ),
          PharmacyBuildSummaryHeader(
            title: tr('tax'),
            details: shipping.summary.tax,
            useDirhamPrice: true,
          ),
          PharmacyBuildSummaryHeader(
            title: tr('totalShipping'),
            details: shipping.summary.shipping,
            useDirhamPrice: true,
          ),
          Visibility(
            visible: shipping.isAdminDiscount == true,
            child: PharmacyBuildSummaryHeader(
              title: tr("discount"),
              details: shipping.discountVal.toString(),
              useDirhamPrice: true,
            ),
          ),
          Gaps.line(context.colors.primary, 15.h),
          PharmacyBuildSummaryHeader(
            title: tr("total"),
            details: shipping.summary.total,
            useDirhamPrice: true,
            // isTotal: true,
          ),
        ],
      ),
    );
  }
}
