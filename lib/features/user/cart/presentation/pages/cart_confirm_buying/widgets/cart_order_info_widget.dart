part of 'cart_confirm_buying_widgets_imports.dart';

class CartOrderInfoWidget extends StatelessWidget {
  final OrderSummary summary;
  const CartOrderInfoWidget({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    print('${summary.summary!.totalItems.toString()}>>>>>>>');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderINfoItemWidget(
          title: 'Date',
          describe: summary.summary!.orderDate,
          gaps: Gaps.hGap16,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Status',
          describe: summary.summary!.orderStatus,
          gaps: Gaps.hGap7,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Total Items',
          describe: summary.summary!.totalItems.toString(),
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Receipt Status',
          describe: summary.summary!.orderStatus,
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Address',
          describe: summary.summary!.shippingAddress,
          gaps: Gaps.hGap7,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'email',
          describe: summary.summary!.email,
          gaps: Gaps.hGap17,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Payment Method',
          describe: summary.summary!.paymentMethod,
          gaps: Gaps.hGap9,
        ),
      ],
    );
  }
}
