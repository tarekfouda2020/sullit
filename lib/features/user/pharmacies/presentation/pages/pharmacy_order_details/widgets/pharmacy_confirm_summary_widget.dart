part of 'widgets_imports.dart';

class PharmacyConfirmSummaryWidget extends StatelessWidget {
  final Orders order;
  final PharmacyOrderDetailsController controller;
  const PharmacyConfirmSummaryWidget(
      {super.key, required this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InvoiceSummaryCard(margin: Dimens.paddingHorizontal20PX, children: [
      BuildSummaryHeader(
        title: tr('subTotal'),
        details: order.subtotal,
        // details: order.getSubTotalWithoutVat().toStringAsFixed(2),
        useDirhamPrice: true,
      ),
      Visibility(
        visible: (order.loyaltyPoints ?? 0) > 0 ||
            (order.couponDiscount.isNotEmpty && order.couponDiscount != "0.0"),
        child: BuildSummaryHeader(
          title: (order.loyaltyPoints ?? 0) > 0
              ? tr("pointsDiscount")
              : tr("voucherDiscount"),
          details: (order.loyaltyPoints ?? 0) > 0
              ? order.loyaltyPointsValue
              : order.couponDiscount,
          detailsColor: context.colors.primary,
          useDirhamPrice: true,
          isDiscount: true,
        ),
      ),
      if (order.orderDiscounts?.isNotEmpty == true)
        ...List.generate(
          order.orderDiscounts!.length,
          (index) {
            var item = order.orderDiscounts![index];
            return BuildSummaryHeader(
              title: item.typeLabel ?? "",
              // details: shippingSummary.vatAmount().toStringAsFixed(2),
              details: item.discount ?? '',
              useDirhamPrice: true,
              isDiscount: true,
              detailsColor: context.colors.primary,
              onPressInfo: item.isTierDiscount == true
                  ? () => controller.showTierFullName(
                      context, item.typeDescription ?? "", item.typeLabel ?? "")
                  : null,
            );
          },
        ),
      BuildSummaryHeader(
        title: tr('service_fees'),
        details: order.totalServiceFess.toStringAsFixed(2),
        useDirhamPrice: true,
        onPressInfo: () => controller.showFeesSheet(context),
      ),
      BuildSummaryHeader(
        title: tr("environmentFee"),
        details: order.environmentFees ?? "0.0",
        useDirhamPrice: true,
        onPressInfo: () => controller.showEnvFeesSheet(context),
      ),
      BuildSummaryHeader(
        title: tr('shippingFees'),
        details: order.shipping ?? '',
        useDirhamPrice: true,
        onPressInfo: () => controller.showDeliveryFeesSheet(context),
      ),
      Gaps.vGap8,
      BuildSummaryHeader(
        title: tr('totalVat'),
        // details: shippingSummary.vatAmount().toStringAsFixed(2),
        details: order.totalVat.toString(),
        useDirhamPrice: true,
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
                amount: order.total ?? "",
                textStyle: AppTextStyle.s14_w800(color: context.colors.black),
              ),
            ],
          )),
      if (!context.isShareHolder)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.line(context.colors.softGray, 15.h),
            _buildRow(context, tr("gained_bezat_point"),
                order.expectedLoyaltyPoints.toString()),
            Gaps.vGap8,
            if ((order.loyaltyPoints ?? 0) > 0)
              _buildRow(context, tr("bezat_points_redeemed"),
                  order.loyaltyPoints.toString()),
            if ((order.loyaltyPoints ?? 0) > 0) Gaps.vGap8,
            NewPointsBalanceWidget(
              cubit: controller.loyaltyPointsBalanceBloc,
              gainedPoints: order.expectedLoyaltyPoints ?? 0,
            ),
          ],
        )
    ]);
  }

  Row _buildRow(BuildContext context, String title, String endTitle) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        ),
        Text(
          endTitle,
          style: AppTextStyle.s14_w800(color: context.colors.black),
        ),
      ],
    );
  }
}
