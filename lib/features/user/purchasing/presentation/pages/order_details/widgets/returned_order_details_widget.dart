part of 'order_details_widgets_imports.dart';


class ReturnedOrderDetailsWidget extends StatelessWidget {
  final Orders? order;
  const ReturnedOrderDetailsWidget({super.key, this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderINfoItemWidget(
            title: 'Returend Date',
            describe:  DateTimeHelper.formatDate(
                date: order?.getOrderDate?? DateTime.now(),
                formatType: "d MMM yyyy - hh:mm a"
            ),
            gaps: Gaps.hGap5
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
            title: 'Total Items',
            describe: order?.totalItemsCount().toString() ?? '2',
            gaps: Gaps.hGap9
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(title: 'Phone', describe: '+99753583245', gaps: Gaps.hGap17),
        Gaps.vGap8,
        OrderINfoItemWidget(
            title: 'Refund Method',
            describe: order?.paymentMethod ?? 'Apple Pay',
            gaps: Gaps.hGap5
        ),
      ],
    );
  }



}
