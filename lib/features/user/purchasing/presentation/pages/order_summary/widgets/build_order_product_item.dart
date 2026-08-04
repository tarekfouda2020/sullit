part of 'order_summary_widgets_imports.dart';

class BuildOrderProductItem extends StatelessWidget {
  final OrderDetails orderDetails;
  final OrderSummaryController controller;
  final int productLength;

  const BuildOrderProductItem(
      {super.key,
      required this.orderDetails,
      required this.productLength,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildOrderInfoItem(
          title: "${tr('product')} :",
          subTitle: orderDetails.product?.name ?? "",
          subTitleColor: context.colors.primary,
        ),
        BuildOrderInfoItem(
          title: "${tr('variation')} :",
          subTitle: orderDetails.variation,
        ),
        BuildOrderInfoItem(
          title: "${tr('quantity')} :",
          subTitle: "${orderDetails.quantity}",
        ),
        BuildOrderInfoItem(
          title: "${tr('chooseDeliveryType')} :",
          subTitle: orderDetails.deliveryType,
        ),
        BuildOrderInfoItem(
          title: "${tr('price')} :",
          subTitle: orderDetails.price,
          useDirhamPrice: true,
        ),
        Visibility(
          visible: orderDetails.isAvailableReview,
          child: DefaultButton(
            title: orderDetails.review == null
                ? tr("addReview")
                : tr("viewReview"),
            onTap: () => controller.showReviewDialog(context, orderDetails),
            height: 30.h,
            width: 200.w,
          ),
        ),
        Visibility(
          visible: productLength > 1,
          child: Gaps.line(context.colors.grey, 20.h),
        )
      ],
    );
  }
}
