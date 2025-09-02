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
          title: tr('date'),
          describe: DateTimeHelper.formatDate(date: order?.getOrderDate?? DateTime.now(), formatType: "d MMM yyyy - hh:mm a"),
          gaps: Gaps.hGap16,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: tr('status'),
          describe: order?.orderStatus ?? 'Delivered',
          gaps: Gaps.hGap7,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: tr('totalItems'),
          describe: order?.totalItemsCount().toString() ?? '5',
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: tr('receiptStatus'),
          describe: order?.deliveryStatus ?? '',
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: tr('address'),
          describe: order?.shippingAddress ?? "",
          gaps: Gaps.hGap7,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: tr('phone'),
          describe: order?.customerPhone ?? "",
          gaps: Gaps.hGap17,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: tr('paymentMethod'),
          describe: order?.paymentMethod ?? "",
          gaps: Gaps.hGap9,
        ),
      ],
    );
  }
}
