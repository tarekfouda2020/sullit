part of 'instore_confirm_buying_widgets_imports.dart';

class InstoreOrderInfoWidget extends StatelessWidget {
  final OrderSummaryDomainModel orderSummary;
  const InstoreOrderInfoWidget({super.key, required this.orderSummary});

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
          describe: orderSummary.getTotalItems().toString(),
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap12,
        // OrderINfoItemWidget(
        //   title: tr('deliverStatus'),
        //   describe: orderSummary.summary!.orderStatus,
        //   gaps: Gaps.hGap9,
        // ),
        // Gaps.vGap12,
        // OrderINfoItemWidget(
        //   title: tr('address'),
        //   describe: orderSummary.summary!.shippingAddress,
        //   gaps: Gaps.hGap7,
        // ),
        // Gaps.vGap12,
        if(orderSummary.summary!.email.isNotEmpty)
        OrderINfoItemWidget(
          title: tr('mail'),
          describe: orderSummary.summary!.email,
          gaps: Gaps.hGap7,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr("phone"),
          describe: getIt<Utilities>().handleFullPhone(context, orderSummary.sectionOrders!.first.customerPhone),
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
    return DateTimeHelper.getDate(orderSummary.summary!.orderDate.toString());
  }




}
