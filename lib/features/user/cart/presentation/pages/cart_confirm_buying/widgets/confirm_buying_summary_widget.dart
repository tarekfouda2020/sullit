part of 'cart_confirm_buying_widgets_imports.dart';

class ConfirmBuyingSummaryWidget extends StatelessWidget {
  final OrderSummaryDomainModel orderSummary;
  final ConfirmBuyingController controller;
  const ConfirmBuyingSummaryWidget(
      {super.key, required this.orderSummary, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InvoiceSummaryCard(margin: Dimens.paddingHorizontal20PX, children: [
      BuildSummaryHeader(
        title: tr('subTotal'),
        details: orderSummary.subTotal.toString(),
        // details: orderSummary.getSubTotalWithoutVat().toStringAsFixed(2),
        useDirhamPrice: true,
      ),
      Visibility(
        visible: orderSummary.loyaltyPointsDiscount > 0 ||
            orderSummary.discounts > 0,
        child: BuildSummaryHeader(
          title: orderSummary.loyaltyPointsDiscount > 0
              ? tr("pointsDiscount")
              : tr("voucherDiscount"),
          details: orderSummary.loyaltyPointsDiscount > 0
              ? orderSummary.loyaltyPointsDiscount.toString()
              : orderSummary.discounts.toString(),
          detailsColor: context.colors.primary,
          useDirhamPrice: true,
          isDiscount: true,
        ),
      ),
      if (orderSummary.discountList.isNotEmpty)
        ...List.generate(
          orderSummary.discountList.length,
          (index) {
            OrderDiscountDomain item = orderSummary.discountList[index];
            return Visibility(
              visible: !item.isInsuranceDiscount,
              child: BuildSummaryHeader(
                title: item.typeLabel,
                // details: shippingSummary.vatAmount().toStringAsFixed(2),
                details: item.discount,
                useDirhamPrice: true,
                isDiscount: true,
                detailsColor: context.colors.primary,
                onPressInfo: item.isTierDiscount
                    ? () => controller.showTierFullName(
                        context, item.typeDescription, item.typeLabel)
                    : null,
              ),
            );
          },
        ),
      BuildSummaryHeader(
        title: tr('service_fees'),
        details: orderSummary.totalServiceFees.toStringAsFixed(2),
        useDirhamPrice: true,
        onPressInfo: () => controller.showFeesSheet(context),
      ),
      BuildSummaryHeader(
        title: tr("environmentFee"),
        details: orderSummary.envFees.toStringAsFixed(2),
        useDirhamPrice: true,
        onPressInfo: () => controller.showEnvFeesSheet(context),
      ),
      BuildSummaryHeader(
        title: tr('shippingFees'),
        details: orderSummary.shippingTotal.toString(),
        useDirhamPrice: true,
        onPressInfo: () => controller.showDeliveryFeesSheet(context),
      ),
      Gaps.vGap8,
      BuildSummaryHeader(
        title: tr('totalVat'),
        // details: shippingSummary.vatAmount().toStringAsFixed(2),
        details: orderSummary.totalVat.toString(),
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
                amount: orderSummary.total.toString(),
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
                orderSummary.summary!.expectedLoyaltyPoints.toString()),
            Gaps.vGap8,
            if (orderSummary.pointsRedeemed > 0)
              _buildRow(context, tr("bezat_points_redeemed"),
                  orderSummary.pointsRedeemed.toString()),
            if (orderSummary.pointsRedeemed > 0) Gaps.vGap8,
            NewPointsBalanceWidget(
              cubit: controller.loyaltyPointsBalanceBloc,
              gainedPoints: orderSummary.summary!.expectedLoyaltyPoints ?? 0,
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
