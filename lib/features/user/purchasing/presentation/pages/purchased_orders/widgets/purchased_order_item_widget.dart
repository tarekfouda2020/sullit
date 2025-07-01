part of 'purchased_orders_widgets_imports.dart';

class PurchasedOrderItemWidget extends StatelessWidget {
  const PurchasedOrderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> AutoRouter.of(context).push(OrderDetailsPageRoute(isReturnedOrder: false)),
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
                 "Order #5465746",
                 style: AppTextStyle.s14_w600(color: context.colors.black),
               ),
               Gaps.vGap6,
               Text(
                 "10 feb 2025 - 09:55 PM",
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
