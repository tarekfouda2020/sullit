part of 'conformation_w_imports.dart';

class BuildOrderSummary extends StatelessWidget {
  final OrderSummary summary;
  const BuildOrderSummary({Key? key, required this.summary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: Dimens.paddingAll15PX,
          child:  Text(
            tr('orderSummary'),
            style: const AppTextStyle.s16_w500(
              color: Colors.black,
            ),
          ),
        ),
        Container(
          padding: Dimens.paddingAll8PX,
          margin: Dimens.paddingHorizontal15PX,
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius5PX,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                color: context.colors.greyWhite,
                blurRadius: 1,
                spreadRadius: 1,
              )
            ],
          ),
          child: Column(
            children: [
              BuildSummaryItem(
                title: '${tr('orderDate')}:',
                value: summary.summary!.orderDate,
              ),
              BuildSummaryItem(
                title: '${tr('orderStatus')}:',
                value: summary.summary!.orderStatus,
              ),
              BuildSummaryItem(
                title: '${tr('theName')}:',
                value: summary.summary!.name,
              ),
              BuildSummaryItem(
                title: '${tr('totalOrderAmount')}:',
                value: summary.summary!.totalOrderAmount,
              ),
              BuildSummaryItem(
                title: '${tr('email')}:',
                value: summary.summary!.email,
              ),
              BuildSummaryItem(
                title: '${tr('shipping')}:',
                value: summary.summary!.shipping,
              ),
              BuildSummaryItem(
                title: '${tr('shippingAddress')}:',
                value: summary.summary!.shippingAddress,
              ),
              BuildSummaryItem(
                title: "${tr('paymentMethod')} :",
                value:summary.summary!.paymentMethod,
                showDivider: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
