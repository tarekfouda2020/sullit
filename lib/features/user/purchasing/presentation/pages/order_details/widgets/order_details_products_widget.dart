part of 'order_details_widgets_imports.dart';

class OrderDetailsProductsWidget extends StatelessWidget {
  final bool isReturned;
  // final bool hasReview;
  final Orders order;
   final OrderDetailsPageController controller;
  const OrderDetailsProductsWidget({
    super.key,
    required this.isReturned,
    // required this.hasReview,
    required this.controller,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 19, right: 19, top: 17, bottom: 20).r,
      decoration: const CustomDecoration(),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                tr("soldBy"),
                style: AppTextStyle.s14_w400(color: context.colors.textColor),
              ),
              Gaps.hGap4,
              Text(
                ":",
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
            return  OrderDetailsProductItemWidget(
              hasReview: order.orderDetails[index].isAvailableReview,
              onPressReview: () => controller.reviewSheet(context,order.orderDetails[index]),
              orderDetails: controller.orderDetailsBloc.state.data!.orderDetails[index],
            );
          }),
          if (!isReturned)
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: GestureDetector(
                onTap:  () => AutoRouter.of(context).push( TrackOrderRoute(orderId: order.id)),
                child: Row(
                  children: [
                    Text(
                      tr("trackShipment"),
                      style: AppTextStyle.s14_w400(color: context.colors.primary),
                    ),
                    Gaps.hGap10,
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: context.colors.primary,
                    ),
                    const Spacer(),
                    Text(
                      tr("shipped"),
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
