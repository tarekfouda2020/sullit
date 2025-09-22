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
          describe: DateTimeHelper.getDate(order?.orderDate ?? "",formatType: "d MMM yyyy - hh:mm a"),
          gaps: Gaps.hGap4,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('status'),
          describe: order?.orderStatus ?? '',
          gaps: Gaps.hGap4,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('totalItems'),
          describe: order?.totalItemsCount().toString() ?? '',
          gaps: Gaps.hGap4,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('receiptStatus'),
          describe: order?.deliveryStatus ?? '',
          gaps: Gaps.hGap4,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('address'),
          describe: order?.shippingAddress ?? "",
          gaps: Gaps.hGap4,
          textHeight: 1.2,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('phone'),
          describe: getIt<Utilities>().handleFullPhone(context, order?.customerPhone ?? ""),
          gaps: Gaps.hGap4,
        ),
        Gaps.vGap12,
        OrderINfoItemWidget(
          title: tr('paymentMethod'),
          describe: order?.paymentMethod ?? "",
          gaps: Gaps.hGap4,
        ),
      ],
    );
  }
}
