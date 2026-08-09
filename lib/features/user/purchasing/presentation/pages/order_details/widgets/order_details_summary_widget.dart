part of 'order_details_widgets_imports.dart';

class OrderDetailsSummaryWidget extends StatelessWidget {
  final bool isReturned;
  final Orders? order;
  final OrderDetailsPageController controller;

  const OrderDetailsSummaryWidget(
      {super.key,
      required this.isReturned,
      this.order,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(21, 19, 19, 15),
      decoration: CustomDecoration(
          boxBorder: Border.all(color: context.colors.gray3),
          myBoxShadow: const []),
      child: Column(
        children: [
          BuildSummaryHeader(
            title: tr('subTotal'),
            details: order?.subtotal ?? '',
            // details: shippingSummary.getSubTotalWithoutVat().toStringAsFixed(2),
            useDirhamPrice: true,
          ),
          if (order?.isCouponApply == true)
            OrderSummaryItemWidget(
              priceType: tr('voucherDiscount'),
              // price: order?.getDiscountNumber().toString() ?? '',
              price: order?.couponDiscount ?? '',
              priceColor: context.colors.primary,
              isDiscount: true,
              useDirhamPrice: true,
            ),
          if (order?.loyaltyPointsApplied == true)
            OrderSummaryItemWidget(
              priceType: tr('pointsDiscount'),
              // price: order?.getDiscountNumber().toString() ?? '',
              price: order?.loyaltyPointsValue ?? '',
              priceColor: context.colors.primary,
              isDiscount: true,
              useDirhamPrice: true,
            ),
          if (order?.orderDiscounts?.isNotEmpty == true)
            ...List.generate(
              order?.orderDiscounts?.length ?? 0,
              (index) {
                OrderDiscountDomain? item = order?.orderDiscounts?[index];
                return BuildSummaryHeader(
                  title: item?.typeLabel ?? "",
                  details: item?.discount ?? '',
                  isDiscount: true,
                  useDirhamPrice: true,
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
            details: order?.totalServiceFess.toStringAsFixed(2) ?? "",
            useDirhamPrice: true,
            onPressInfo: () => controller.showFeesSheet(context),
          ),
          if(order?.isInStore == true)
          BuildSummaryHeader(
            title: tr('environmentFee'),
            details: order?.environmentFees ?? "0.0",
            useDirhamPrice: true,
            onPressInfo: () => controller.showEnvFeesSheet(context),
          ),
          if (!isReturned || order?.isInStore == true)
            Gaps.empty
          else BuildSummaryHeader(
            title: tr('shippingFees'),
            details: order?.shipping ?? '',
            useDirhamPrice: true,
            onPressInfo: () => controller.showDeliveryFeesSheet(context),
          ),
          BuildSummaryHeader(
            title: tr('totalVat'),
            details: order?.totalVat.toString() ?? "",
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
                amount: order?.total ?? "",
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
                    (order?.expectedLoyaltyPoints).toString()),
                Gaps.vGap8,
                if ((order?.loyaltyPoints ?? 0) > 0)
                  _buildRow(context, tr("bezat_points_redeemed"),
                      (order?.loyaltyPoints ?? 0).toString()),
                if ((order?.loyaltyPoints ?? 0) > 0) Gaps.vGap8,
                NewPointsBalanceWidget(
                  cubit: controller.loyaltyPointsBalanceBloc,
                  gainedPoints: order?.expectedLoyaltyPoints ?? 0,
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
