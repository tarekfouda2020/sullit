part of 'order_details_widgets_imports.dart';

class OrderDetailsWidget extends StatelessWidget {
  final Orders? order;
  const OrderDetailsWidget({super.key, this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderINfoItemWidget(
          title: 'Date',
          describe: DateTimeHelper.formatDate(date: order?.getOrderDate?? DateTime.now(), formatType: "d MMM yyyy - hh:mm a"),
          gaps: Gaps.hGap16,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Status',
          describe: order?.orderStatus ?? 'Delivered',
          gaps: Gaps.hGap7,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Total Items',
          describe: order?.totalItemsCount().toString() ?? '5',
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Receipt Status',
          describe: order?.deliveryStatus ?? 'Delivery',
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Address',
          describe: order?.shippingAddress ?? 'Home , Dubai',
          gaps: Gaps.hGap7,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Phone',
          describe: '+99753583245',
          gaps: Gaps.hGap17,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Payment Method',
          describe: order?.paymentMethod ?? 'Apple Pay',
          gaps: Gaps.hGap9,
        ),
      ],
    );
  }
}
