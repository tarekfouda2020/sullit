part of 'order_details_widgets_imports.dart';

class OrderDetailsProductItemWidget extends StatelessWidget {
  final bool hasReview;
  final  void Function()? onPressReview;
  final OrderDetails orderDetails;
  const OrderDetailsProductItemWidget({super.key, required this.hasReview, this.onPressReview, required this.orderDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingH17V13,
      margin: const EdgeInsets.only(bottom: 8),
      decoration: CustomDecoration(boxBorder: Border.all(color: context.colors.gray3), myBoxShadow: const []),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedImage(
                url:orderDetails.product?.thumbnailImage ?? "https://palmercandy.com/cdn/shop/files/smarties.webp?v=1696350898",
                width: 46,
                height: 46,
                bgColor: Colors.transparent,
                borderRadius: BorderRadius.circular(5),
              ),
              Gaps.hGap11,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderDetails.product?.name ?? "Dubai Chocolate Konafa Pistachio",
                      style: AppTextStyle.s14_w600(color: context.colors.black),
                    ),
                    Gaps.vGap5,
                    RatingBar.builder(
                      initialRating: (orderDetails.review?.rate ?? orderDetails.product?.rating ?? 0.0).toDouble(),
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemSize: 10.sp,
                      ignoreGestures: true,
                      itemBuilder: (context, _) => Icon(
                        Icons.star_rounded,
                        color: context.colors.yellow,
                      ),
                      unratedColor: context.colors.grey,
                      onRatingUpdate: (rating) {},
                    ),
                    Gaps.vGap5,
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            orderDetails.product?.priceHighLow ?? "31.50 AED",
                            style: AppTextStyle.s14_w600(color: context.colors.primary),
                          ),
                        ),
                        Text(
                            "Qnt : ${orderDetails.quantity.toString() ?? 1}",
                          style: AppTextStyle.s14_w400(color: context.colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          if (orderDetails.isAvailableReview)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gaps.vGap12,
                Gaps.line(context.colors.softGray, 0),
                Gaps.vGap12,
                GestureDetector(
                  onTap: onPressReview,
                  child: Row(
                    children: [
                      Text(
                        "Review Product",
                        style: AppTextStyle.s14_w400(color: context.colors.primary),
                      ),
                      Gaps.hGap10,
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: context.colors.primary,
                      ),
                    ],
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
