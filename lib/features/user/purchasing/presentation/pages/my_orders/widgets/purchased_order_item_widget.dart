part of 'purchased_orders_widgets_imports.dart';

class MyOrderItemWidget extends StatelessWidget {
  final Orders order;
  final MyOrdersController controller;
  const MyOrderItemWidget({super.key, required this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.routeToOrderDetails(context,order),
      child: Container(
        padding: const EdgeInsets.all(20),
         margin: const EdgeInsets.only(bottom: 10),
        decoration: CustomDecoration(
          myBoxShadow: const [],
          boxBorder: Border.all(color: context.colors.gray3),
        ),
       child: Column(
         children: [
           Row(
             children: [
               Image.asset(
                 width: 36, height: 36,
                   Res.purchasedOrderIcon
               ),
               Gaps.hGap13,
               Flexible(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         Expanded(
                           child: Text(
                             "${tr("orderNumber")}${order.code}",
                             style: AppTextStyle.s14_w600(color: context.colors.black),
                           ),
                         ),
                         Text(
                           _getStatusText(),
                           style: AppTextStyle.s14_w600(color: _getStatusColor(context)),
                         ),
                       ],
                     ),
                     Gaps.vGap6,
                     Text(
                       DateTimeHelper.getDate(order.orderDate),
                       style: AppTextStyle.s12_w400(color: context.colors.textColor),
                     ),
                   ],
                 ),
               )
             ],
           ),
           if(order.showUnPaidOnlineOrderActions)
             Padding(
               padding: const EdgeInsets.only(top: 16),
               child: PayCancelOrderButtonsWidget(order: order, controller: controller),
             ),
           if(order.isDelivered || order.isCanceled)
             Padding(
               padding: const EdgeInsets.only(top: 16),
               child: ReOrderButtonWidget(onPress: () => controller.reOrder(context,order.id)),
             ),
         ],
       ),
      ),
    );
  }

  String _getStatusText(){
    if(order.isPaymentOnline && !order.isPaid && !order.isCanceled){
     return order.paymentStatusText.replaceAll("-", "") ;
    }else{
      return order.orderStatus;
    }
  }

  Color _getStatusColor(BuildContext context){
    if(order.isPaymentOnline && !order.isPaid && !order.isCanceled){
      return context.colors.redAccent ;
    }else{
      return order.getTrackOrderStatus.getOrderStatusColor();
    }
  }


}
