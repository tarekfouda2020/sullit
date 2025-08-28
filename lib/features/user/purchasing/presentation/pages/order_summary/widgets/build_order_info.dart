part of 'order_summary_widgets_imports.dart';

class BuildOrderInfo extends StatelessWidget {
  final Orders orderModel;

  const BuildOrderInfo({super.key, required this.orderModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 15,top: 15,end: 10,bottom: 15),
      margin: Dimens.paddingVertical5PX,
      decoration: const CustomDecoration(),
      child: Column(
        children: [
          BuildOrderInfoItem(
            title: "${tr('orderCode')} :",
            subTitle: orderModel.code,
          ),
          BuildOrderInfoItem(
            title: "${tr('customer')} :",
            subTitle: orderModel.customerName,
          ),
          BuildOrderInfoItem(
            title: "${tr('mail')} :",
            subTitle: orderModel.customerEmail,
          ),
          BuildOrderInfoItem(
            title: "${tr('shippingAddress')} :",
            subTitle: orderModel.shippingAddress,
          ),
          BuildOrderInfoItem(
            title: "${tr('orderDate')} :",
            subTitle: DateTimeHelper.getDate(orderModel.orderDate),
          ),
          BuildOrderInfoItem(
            title: "${tr('orderStatus')} :",
            subTitle: orderModel.orderStatus,
          ),
          BuildOrderInfoItem(
            title: "${tr('totalOrderAmount')} :",
            subTitle: orderModel.total.parseCurrency,
          ),
          BuildOrderInfoItem(
            title: "${tr('shippingMethod')} :",
            subTitle: orderModel.shippingMethod,
          ),
          BuildOrderInfoItem(
            title: "${tr('paymentMethod')} :",
            subTitle: orderModel.paymentMethod,
          ),
          Visibility(
            visible: orderModel.additionalInfo != '',
            child: BuildOrderInfoItem(
              title: "${tr('additionalInfo')} :",
              subTitle: orderModel.additionalInfo,
            ),
          ),
        ],
      ),
    );
  }
}
