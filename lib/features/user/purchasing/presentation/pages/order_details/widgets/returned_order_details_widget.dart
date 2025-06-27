part of 'order_details_widgets_imports.dart';


class ReturnedOrderDetailsWidget extends StatelessWidget {
  const ReturnedOrderDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderINfoItemWidget( title: 'Returend Date', describe: '10 feb 2025 - 09:55 PM', gaps: Gaps.hGap5),
        Gaps.vGap8,
        OrderINfoItemWidget( title: 'Total Items', describe: '2', gaps: Gaps.hGap9),
        Gaps.vGap8,
        OrderINfoItemWidget(title: 'Phone', describe: '+99753583245', gaps: Gaps.hGap17),
        Gaps.vGap8,
        OrderINfoItemWidget(title: 'Refund Method', describe: 'Apple Pay', gaps: Gaps.hGap5),
      ],
    );
  }



}
