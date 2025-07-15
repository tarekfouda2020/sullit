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
            priceType: 'Total Items',
            price: order?.subtotal ?? '63.00 AED',
          ),
          Gaps.vGap10,
           OrderSummaryItemWidget(
            priceType: 'Tax',
            price: order?.tax ?? '7.00 AED',
          ),
          Gaps.vGap10,
          if(!isReturned)
           OrderSummaryItemWidget(
            priceType: 'Shipping fees',
            price: order?.shipping ?? '7.00 AED',
          ),
          if(!isReturned)
            Gaps.vGap10,
         if(order?.isCouponApply ?? true)
          OrderSummaryItemWidget(
              priceType: 'Voucher Discount',
              price: order?.getDiscountNumber().toString() ?? '-2.00 AED',
              priceColor: context.colors.primary
          ),
          Gaps.vGap10,
          Gaps.line(context.colors.softGray, 0),
          Gaps.vGap13,
          Row(
            children: [
              Expanded(
                child: Text(
                  "Total",
                  style: AppTextStyle.s16_w400(color: context.colors.black),
                ),
              ),
              Text(
                order?.total ?? "17.00 AED",
                style: AppTextStyle.s16_w700(color: context.colors.black),
              )
            ],
          )
        ],
      ),
    );
  }


}
