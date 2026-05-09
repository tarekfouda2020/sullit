part of 'order_summary_widgets_imports.dart';

class BuildOrderAmount extends StatelessWidget {
  final Orders orderModel;
  final OrderSummaryController controller;

  const BuildOrderAmount(
      {super.key, required this.orderModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(21, 19, 19, 15),
      margin: Dimens.paddingVertical5PX,
      decoration: CustomDecoration(
          boxBorder: Border.all(color: context.colors.gray3),
          myBoxShadow: const []),
      child: Column(
        children: [
          BuildSummaryHeader(
            title: tr('subTotal'),
            details: orderModel.subtotal,
            useDirhamPrice: true,
          ),
          if (orderModel.isCouponApply)
            OrderSummaryItemWidget(
              priceType: tr('voucherDiscount'),
              price: orderModel.couponDiscount,
              priceColor: context.colors.primary,
              useDirhamPrice: true,
              isDiscount: true,
            ),
          if (orderModel.loyaltyPointsApplied)
            OrderSummaryItemWidget(
              priceType: tr('pointsDiscount'),
              price: orderModel.loyaltyPointsValue,
              priceColor: context.colors.primary,
              useDirhamPrice: true,
              isDiscount: true,
            ),
          if (orderModel.orderDiscounts?.isNotEmpty == true)
            ...List.generate(
              orderModel.orderDiscounts?.length ?? 0,
              (index) {
                var item = orderModel.orderDiscounts?[index];
                return BuildSummaryHeader(
                  title: item?.typeLabel ?? "",
                  details: item?.discount ?? "",
                  isDiscount: true,
                  detailsColor: context.colors.primary,
                  onPressInfo: item?.isTierDiscount == true
                      ? () => controller.showTierFullName(context,
                          item?.typeDescription ?? "", item?.typeLabel ?? "")
                      : null,
                );
              },
            ),
          BuildSummaryHeader(
            title: tr('service_fees'),
            details: orderModel.totalServiceFess.toStringAsFixed(2),
            useDirhamPrice: true,
            onPressInfo: () => controller.showFeesSheet(context),
          ),
          BuildSummaryHeader(
            title: tr('environmentFee'),
            details: orderModel.environmentFees,
            useDirhamPrice: true,
            onPressInfo: () => controller.showEnvFeesSheet(context),
          ),
          BuildSummaryHeader(
            title: tr('shippingFees'),
            details: orderModel.shipping,
            useDirhamPrice: true,
            onPressInfo: () => controller.showDeliveryFeesSheet(context),
          ),
          BuildSummaryHeader(
            title: tr('totalVat'),
            details: orderModel.totalVat.toString(),
            useDirhamPrice: true,
          ),
          Gaps.vGap10,
          Gaps.line(context.colors.softGray, 0),
          Gaps.vGap13,
          Row(
            children: [
              Expanded(
                child: Text(
                  tr("total"),
                  style: AppTextStyle.s16_w400(color: context.colors.black),
                ),
              ),
              DirhamPrice(
                amount: orderModel.total,
                currencyOffset: 0,
                currencyStyle:
                    AppTextStyle.s18_w400(color: context.colors.black),
                textStyle: AppTextStyle.s16_w700(color: context.colors.black),
              )
            ],
          ),
          if (!context.isShareHolder)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.vGap10,
                Gaps.line(context.colors.softGray, 0),
                Gaps.vGap13,
                _buildRow(context, tr("gained_bezat_point"),
                    (orderModel.expectedLoyaltyPoints).toString()),
                Gaps.vGap8,
                if ((orderModel.loyaltyPoints) > 0)
                  _buildRow(context, tr("bezat_points_redeemed"),
                      (orderModel.loyaltyPoints).toString()),
                if ((orderModel.loyaltyPoints) > 0) Gaps.vGap8,
                NewPointsBalanceWidget(
                  cubit: controller.loyaltyPointsBalanceBloc,
                  gainedPoints: orderModel.expectedLoyaltyPoints,
                )
              ],
            ),
        ],
      ),
    );
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
