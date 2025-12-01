part of 'purchased_orders_widgets_imports.dart';

class MyOrderItemWidget extends StatelessWidget {
  final Orders? order;
  final MyOrdersController controller;
  const MyOrderItemWidget({super.key, this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => controller.routeToOrderDetails(context,order),
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
                             "${tr("orderNumber")}${order?.code}",
                             style: AppTextStyle.s14_w600(color: context.colors.black),
                           ),
                         ),
                         Text(
                           "${order?.getTrackOrderStatus.name}",
                           style: AppTextStyle.s14_w600(color: order?.getTrackOrderStatus.getOrderStatusColor()??Colors.black),
                         )

                       ],
                     ),
                     Gaps.vGap6,
                     Text(
                       "DateTimeHelper.getDate(order?.orderDate??"")",
                       style: AppTextStyle.s12_w400(color: context.colors.textColor),
                     ),
                   ],
                 ),
               )
             ],
           ),
           Gaps.vGap16,
           if(order?.isPaid == false && order?.isPaymentOnline == true)
             PayCancelOrderButtonsWidget(order: order, controller: controller),
           if(order?.isDelivered == true)
             ReOrderButtonWidget(onPress: () => controller.reOrder(context),),
         ],
       ),
      ),
    );
  }



}
