part of 'order_summary_widgets_imports.dart';

class BuildOrderAmount extends StatelessWidget {
  final Orders orderModel;

  const BuildOrderAmount({super.key, required this.orderModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      margin: Dimens.paddingVertical5PX,
      decoration: CustomDecoration(),
      child: Column(
        children: [
          BuildOrderInfoItem(
            title: "Subtotal :",
            subTitle: orderModel.subtotal,
          ),
          BuildOrderInfoItem(
            title: "Shipping :",
            subTitle: orderModel.shipping,
          ),
          BuildOrderInfoItem(
            title: "Tax :",
            subTitle: orderModel.tax,
          ),
          BuildOrderInfoItem(
            title: "Coupon :",
            subTitle: orderModel.couponDiscount,
          ),
          BuildOrderInfoItem(
            title: "Total :",
            subTitle: orderModel.total,
          ),

        ],
      ),
    );
  }
}
