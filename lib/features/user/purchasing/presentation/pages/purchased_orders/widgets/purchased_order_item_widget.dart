part of 'purchased_orders_widgets_imports.dart';

class PurchasedOrderItemWidget extends StatelessWidget {
  final Orders order;
  final PurchasedOrdersController controller;
  const PurchasedOrderItemWidget({super.key, required this.order, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(OrderDetailsPageRoute(isReturnedOrder: false,order: order)),
      child: Container(
        padding: const EdgeInsets.all(20),
         margin: const EdgeInsets.only(bottom: 10),
        decoration: CustomDecoration(
          myBoxShadow: const [],
          boxBorder: Border.all(color: context.colors.gray3),
        ),
       child: Row(
         children: [
           Image.asset(
             width: 36, height: 36,
               Res.purchasedOrderIcon
           ),
           Gaps.hGap13,
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 "${tr("orderNumber")}${order.code}",
                 style: AppTextStyle.s14_w600(color: context.colors.black),
               ),
               Gaps.vGap6,
               Text(
                 DateTimeHelper.getDate(order.orderDate),
                 style: AppTextStyle.s12_w400(color: context.colors.textColor),
               ),
             ],
           )
         ],
       ),
      ),
    );
  }



}
