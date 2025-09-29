part of 'order_details_widgets_imports.dart';

class OrderDetailsSummaryWidget extends StatelessWidget {
  final bool isReturned;
  final Orders? order;
  const OrderDetailsSummaryWidget({super.key, required this.isReturned, this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(21, 19, 19, 15),
      decoration: CustomDecoration(
        boxBorder: Border.all(color: context.colors.gray3),
        myBoxShadow: const []
      ),
      child: Column(
        children: [
           OrderSummaryItemWidget(
            priceType: tr('totalItems'),
            price: order?.subtotal ?? '',
            useDirhamPrice: true,
          ),
          Gaps.vGap10,
           OrderSummaryItemWidget(
            priceType: tr('tax'),
            price: order?.tax ?? '',
            useDirhamPrice: true,
          ),
          Gaps.vGap10,
          if(!isReturned)
           OrderSummaryItemWidget(
            priceType: tr('shippingFees'),
            price: order?.shipping ?? '',
            useDirhamPrice: true,
          ),
          if(!isReturned)
            Gaps.vGap10,
         if(order?.isCouponApply ?? true)
          OrderSummaryItemWidget(
              priceType: tr('voucherDiscount'),
              // price: order?.getDiscountNumber().toString() ?? '',
              price: order?.couponDiscount ?? '',
              priceColor: context.colors.primary,
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
                currencyStyle: AppTextStyle.s18_w400(color: context.colors.black),
                textStyle: AppTextStyle.s16_w700(color: context.colors.black),
              )
            ],
          )
        ],
      ),
    );
  }


}
