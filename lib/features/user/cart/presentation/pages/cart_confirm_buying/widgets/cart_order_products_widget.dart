part of 'cart_confirm_buying_widgets_imports.dart';

class CartOrderProductsWidget extends StatelessWidget {
  final ConfirmBuyingController controller;
  final Orders order;
  const CartOrderProductsWidget({super.key, required this.controller, required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 19, right: 19, top: 17, bottom: 20).r,
      margin: Dimens.paddingHorizontal20PX,
      decoration: const CustomDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Sold By :",
                style: AppTextStyle.s14_w400(color: context.colors.textColor),
              ),
              Gaps.hGap7,
              Text(
                order.soldBy,
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap12,
          ...List.generate(order.orderDetails.length, (index) {
            var item = order.orderDetails[index];
            return  OrderDetailsProductItemWidget(
              hasReview: false,
              onPressReview: () => controller.reviewSheet(context,item),
              orderDetails: item,
            );
          }),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: GestureDetector(
                onTap: ()=> AutoRouter.of(context).push( TrackOrderRoute(orderId: order.id) ),
                child: Row(
                  children: [
                    Text(
                      "Track Shipment",
                      style: AppTextStyle.s14_w400(color: context.colors.primary),
                    ),
                    Gaps.hGap10,
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: context.colors.primary,
                    ),
                    const Spacer(),
                    Text(
                      "Shipped",
                      style: AppTextStyle.s14_w700(color: context.colors.black),
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }


}