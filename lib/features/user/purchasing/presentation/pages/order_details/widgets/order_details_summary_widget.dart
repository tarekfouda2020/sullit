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
            price: order?.subtotal.parseCurrency ?? '',
          ),
          Gaps.vGap10,
           OrderSummaryItemWidget(
            priceType: tr('tax'),
            price: order?.tax.parseCurrency ?? '',
          ),
          Gaps.vGap10,
          if(!isReturned)
           OrderSummaryItemWidget(
            priceType: tr('shippingFees'),
            price: order?.shipping.parseCurrency ?? '',
          ),
          if(!isReturned)
            Gaps.vGap10,
         if(order?.isCouponApply ?? true)
          OrderSummaryItemWidget(
              priceType: tr('voucherDiscount'),
              // price: order?.getDiscountNumber().toString() ?? '',
              price: order?.couponDiscount.parseCurrency?? '',
              priceColor: context.colors.primary
          ),
          Gaps.vGap10,
          Gaps.line(context.colors.softGray, 0),
          Gaps.vGap13,
          Row(
            children: [
              Expanded(
                child:               Text(
                  tr("total"),
                  style: AppTextStyle.s16_w400(color: context.colors.black),
                ),
              ),
              Text(
                order?.total.parseCurrency ?? "",
                style: AppTextStyle.s16_w700(color: context.colors.black),
              )
            ],
          )
        ],
      ),
    );
  }


}
