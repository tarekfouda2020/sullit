part of 'cart_confirm_buying_widgets_imports.dart';

class CartOrderInfoWidget extends StatelessWidget {
  final OrderSummary orderSummary;
  const CartOrderInfoWidget({super.key, required this.orderSummary});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderINfoItemWidget(
          title: tr('date'),
          describe: _getDate,
          gaps: Gaps.hGap16,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('orderStatus'),
          describe: orderSummary.summary!.orderStatus,
          gaps: Gaps.hGap7,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('totalItems'),
          describe: (orderSummary.sectionOrders ?? <Orders>[]).length.toString(),
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('deliverStatus'),
          describe: orderSummary.summary!.orderStatus,
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('address'),
          describe: orderSummary.summary!.shippingAddress,
          gaps: Gaps.hGap7,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('mail'),
          describe: orderSummary.summary!.email,
          gaps: Gaps.hGap17,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: "phone",
          describe: orderSummary.sectionOrders!.first.customerPhone,
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('paymentMethod'),
          describe: orderSummary.summary!.paymentMethod,
          gaps: Gaps.hGap9,
        ),
      ],
    );
  }


   String get _getDate {
    var dateTime = DateTimeHelper.convertToDateTime(strDate: orderSummary.summary!.orderDate);
    return DateTimeHelper.formatDate(date: dateTime, formatType: "d MMM yyyy - hh:mm a");
  }




}
