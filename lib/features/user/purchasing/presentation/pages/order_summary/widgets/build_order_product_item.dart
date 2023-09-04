part of 'order_summary_widgets_imports.dart';

class BuildOrderProductItem extends StatelessWidget {
  final OrderDetails orderDetails;
  final OrderSummaryController controller;
  final int productLength;

  const BuildOrderProductItem(
      {super.key, required this.orderDetails, required this.productLength, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildOrderInfoItem(
          title: "Product :",
          subTitle: orderDetails.product?.name ?? "",
          subTitleColor: context.colors.primary,
        ),
        BuildOrderInfoItem(
          title: "Variation :",
          subTitle: orderDetails.variation,
        ),
        BuildOrderInfoItem(
          title: "Quantity :",
          subTitle: "${orderDetails.quantity}",
        ),
        BuildOrderInfoItem(
          title: "Delivery Type :",
          subTitle: orderDetails.deliveryType,
        ),
        BuildOrderInfoItem(
          title: "Price :",
          subTitle: orderDetails.price,
        ),
        BuildOrderInfoItem(
          title: "Review :",
          subTitle: orderDetails.review?.comment ?? orderDetails.msgCantReview,
          subTitleColor: context.colors.primary,
        ),
        Visibility(
          visible: orderDetails.isAvailableReview,
          child: DefaultButton(
            title: 'Review',
            onTap: () =>controller.showReviewDialog(context, orderDetails),
            height: 30.h,
            width: 200.w,
          ),
        ),
        Visibility(
          visible: productLength > 1,
          child: Gaps.line(context.colors.greyWhite, 20.h),
        )
      ],
    );
  }
}
