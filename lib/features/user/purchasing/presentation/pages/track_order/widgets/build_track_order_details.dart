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
            title: "Order Code :",
            subTitle: orderModel.code,
          ),
          BuildTrackOrderSummaryItem(
            title: "Customer :",
            subTitle: orderModel.customerName,
          ),
          BuildTrackOrderSummaryItem(
            title: "E-mail :",
            subTitle: orderModel.customerEmail,
          ),
          BuildTrackOrderSummaryItem(
            title: "Shipping address :",
            subTitle: orderModel.shippingAddress,
          ),
          BuildTrackOrderSummaryItem(
            title: "Order Date :",
            subTitle: orderModel.orderDate,
          ),
          BuildTrackOrderSummaryItem(
            title: "Total Order Amount :",
            subTitle: orderModel.orderDate,
          ),
          BuildTrackOrderSummaryItem(
            title: "Shipping Method :",
            subTitle: orderModel.shippingMethod,
          ),
          BuildTrackOrderSummaryItem(
            title: "Payment Method :",
            subTitle: orderModel.paymentMethod,
          ),
          BuildTrackOrderSummaryItem(
            title: "Delivery Status :",
            subTitle: orderModel.deliveryStatus,
          ),
          const BuildTrackOrderSummaryItem(
            title: "Shipped By :",
            subTitle: "admin",
          ),
        ],
      ),
    );
  }
}
