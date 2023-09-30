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
            title: "${tr('subTotal')} :",
            subTitle: orderModel.subtotal,
          ),
          BuildOrderInfoItem(
            title: "${tr('shipping')} :",
            subTitle: orderModel.shipping,
          ),
          BuildOrderInfoItem(
            title: "${tr('tax')} :",
            subTitle: orderModel.tax,
          ),
          BuildOrderInfoItem(
            title: "${tr('coupon')} :",
            subTitle: orderModel.couponDiscount,
          ),
          BuildOrderInfoItem(
            title: "${tr('total')} :",
            subTitle: orderModel.total,
          ),

        ],
      ),
    );
  }
}
