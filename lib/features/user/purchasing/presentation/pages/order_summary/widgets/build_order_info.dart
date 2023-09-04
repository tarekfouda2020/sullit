part of 'order_summary_widgets_imports.dart';

class BuildOrderInfo extends StatelessWidget {
  final Orders orderModel;

  const BuildOrderInfo({super.key, required this.orderModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      margin: Dimens.paddingVertical5PX,
      decoration: CustomDecoration(),
      child: Column(
        children: [
          BuildOrderInfoItem(
            title: "Order Code :",
            subTitle: orderModel.code,
          ),
          BuildOrderInfoItem(
            title: "Customer :",
            subTitle: orderModel.customerName,
          ),
          BuildOrderInfoItem(
            title: "E-mail :",
            subTitle: orderModel.customerEmail,
          ),
          BuildOrderInfoItem(
            title: "Shipping address :",
            subTitle: orderModel.shippingAddress,
          ),
          BuildOrderInfoItem(
            title: "Order Date :",
            subTitle: orderModel.orderDate,
          ),
          BuildOrderInfoItem(
            title: "Order Status :",
            subTitle: orderModel.orderStatus,
          ),
          BuildOrderInfoItem(
            title: "Total Order Amount :",
            subTitle: orderModel.orderDate,
          ),
          BuildOrderInfoItem(
            title: "Shipping Method :",
            subTitle: orderModel.shippingMethod,
          ),
          BuildOrderInfoItem(
            title: "Payment Method :",
            subTitle: orderModel.paymentMethod,
          ),
        ],
      ),
    );
  }
}
