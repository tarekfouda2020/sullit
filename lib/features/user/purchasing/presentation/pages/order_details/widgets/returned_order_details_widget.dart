part of 'order_details_widgets_imports.dart';

class ReturnedOrderDetailsWidget extends StatelessWidget {
  final Orders? order;
  const ReturnedOrderDetailsWidget({super.key, this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderINfoItemWidget(
          title: tr('returnedDate'),
          describe: DateTimeHelper.formatDate(
              date: order?.getOrderDate ?? DateTime.now(),
              formatType: "d MMM yyyy - hh:mm a"),
          gaps: Gaps.hGap4,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: tr('totalItems'),
          describe: order?.totalItemsCount().toString() ?? '',
          gaps: Gaps.hGap4,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
            title: tr('phone'),
            describe: order?.customerPhone ?? "",
            gaps: Gaps.hGap17),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: tr('refundMethod'),
          describe: order?.paymentMethod ?? '',
          gaps: Gaps.hGap4,
        ),
      ],
    );
  }
}
