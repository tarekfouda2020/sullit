part of 'order_details_widgets_imports.dart';

class OrderDetailsSummaryWidget extends StatelessWidget {
  final bool isReturned;
  const OrderDetailsSummaryWidget({super.key, required this.isReturned});

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
          const OrderSummaryItemWidget(priceType: 'Total Items', price: '63.00 AED',),
          Gaps.vGap10,
          const OrderSummaryItemWidget(priceType: 'Tax', price: '7.00 AED',),
          Gaps.vGap10,
          if(!isReturned)
          const OrderSummaryItemWidget(priceType: 'Shipping fees', price: '7.00 AED',),
          if(!isReturned)
            Gaps.vGap10,
          OrderSummaryItemWidget(priceType: 'Voucher Discount', price: '-2.00 AED',priceColor: context.colors.primary),
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
                "17.00 AED",
                style: AppTextStyle.s16_w700(color: context.colors.black),
              )
            ],
          )
        ],
      ),
    );
  }


}
