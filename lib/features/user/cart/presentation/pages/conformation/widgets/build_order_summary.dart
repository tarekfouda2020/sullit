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
          child: const Text(
            'Order Summary',
            style: AppTextStyle.s16_w500(
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
                title: 'Order date:',
                value: summary.summary!.orderDate,
              ),
              BuildSummaryItem(
                title: 'Order status:',
                value: summary.summary!.orderStatus,
              ),
              BuildSummaryItem(
                title: 'Name:',
                value: summary.summary!.name,
              ),
              BuildSummaryItem(
                title: 'Total order amount:',
                value: summary.summary!.totalOrderAmount,
              ),
              BuildSummaryItem(
                title: 'Email:',
                value: summary.summary!.email,
              ),
              BuildSummaryItem(
                title: 'Shipping:',
                value: summary.summary!.shipping,
              ),
              BuildSummaryItem(
                title: 'Shipping address:',
                value: summary.summary!.shippingAddress,
              ),
              BuildSummaryItem(
                title: summary.summary!.paymentMethod,
                value: 'Wallet',
                showDivider: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
