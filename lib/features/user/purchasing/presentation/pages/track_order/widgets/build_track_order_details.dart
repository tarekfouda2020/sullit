part of 'track_order_widgets_imports.dart';

class BuildTrackOrderDetails extends StatelessWidget {
  final Orders orderModel;

  const BuildTrackOrderDetails({super.key, required this.orderModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical20PX,
      padding: Dimens.paddingAll15PX,
      decoration: CustomDecoration(),
      child: Column(
        children: [
          BuildTrackOrderSummaryItem(
            title: "${tr('orderCode')} :",
            subTitle: orderModel.code,
          ),
          BuildTrackOrderSummaryItem(
            title: "${tr('customer')} :",
            subTitle: orderModel.customerName,
          ),
          BuildTrackOrderSummaryItem(
            title: "${tr('mail')} :",
            subTitle: orderModel.customerEmail,
          ),
          BuildTrackOrderSummaryItem(
            title: "${tr('shippingAddress')} :",
            subTitle: orderModel.shippingAddress,
          ),
          BuildTrackOrderSummaryItem(
            title: "${tr('orderDate')} :",
            subTitle: orderModel.orderDate,
          ),
          BuildTrackOrderSummaryItem(
            title: "${tr('totalOrderAmount')} :",
            subTitle: orderModel.subtotal,
          ),
          BuildTrackOrderSummaryItem(
            title: "${tr('shippingMethod')} :",
            subTitle: orderModel.shippingMethod,
          ),
          BuildTrackOrderSummaryItem(
            title: "${tr('paymentMethod')} :",
            subTitle: orderModel.paymentMethod,
          ),
          BuildTrackOrderSummaryItem(
            title: "${tr('deliveryStatus')} :",
            subTitle: orderModel.deliveryStatus,
          ),
          Visibility(
            visible: orderModel.additionalInfo != '',
            child: BuildTrackOrderSummaryItem(
              title: "${tr('additionalInfo')} :",
              subTitle: orderModel.additionalInfo,
            ),
          )
        ],
      ),
    );
  }
}
