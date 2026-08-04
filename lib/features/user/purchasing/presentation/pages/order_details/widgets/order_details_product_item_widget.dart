part of 'order_details_widgets_imports.dart';

class OrderDetailsProductItemWidget extends StatelessWidget {
  final bool hasReview;
  final void Function()? onPressReview;
  final OrderDetails orderDetails;

  const OrderDetailsProductItemWidget(
      {super.key,
      required this.hasReview,
      this.onPressReview,
      required this.orderDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingH17V13,
      margin: const EdgeInsets.only(bottom: 8),
      decoration: CustomDecoration(
          boxBorder: Border.all(color: context.colors.gray3),
          myBoxShadow: const []),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedImage(
                url: orderDetails.product?.thumbnailImage ?? "",
                width: 46,
                height: 46,
                bgColor: Colors.transparent,
                borderRadius: BorderRadius.circular(5),
              ),
              Gaps.hGap11,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        orderDetails.product?.name ?? "",
                        style:
                            AppTextStyle.s14_w600(color: context.colors.black),
                      ),
                      Gaps.vGap5,
                      RatingBar.builder(
                        initialRating: (orderDetails.review?.rate ??
                                orderDetails.product?.rating ??
                                0.0)
                            .toDouble(),
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
                      Gaps.vGap7,
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Visibility(
                                //   visible: (orderDetails.product?.hasDiscount ??
                                //           false) ||
                                //       (orderDetails.product?.hasVipOffer ??
                                //           false),
                                //   child: Text(
                                //       orderDetails.product?.priceHighLow.parseCurrency ?? "",
                                //     style: AppTextStyle.s14_w400(
                                //             color: context.colors.textColor)
                                //         .copyWith(
                                //             decoration:
                                //                 TextDecoration.lineThrough),
                                //   ),
                                // ),
                                DirhamPrice(
                                  amount: orderDetails.getPrice
                                      .toString()
                                      .formatAmount(),
                                  textStyle: AppTextStyle.s14_w600(
                                      color: context.colors.primary),
                                  currencyStyle: AppTextStyle.s16_w400(
                                      color: context.colors.primary),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                tr("qnt"),
                                style: AppTextStyle.s14_w400(
                                    color: context.colors.black),
                              ),
                              Text(
                                orderDetails.quantity.toString().formatAmount(),
                                style: AppTextStyle.s14_w600(
                                    color: context.colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Gaps.vGap10,
                      Row(
                        children: [
                          Expanded(
                            child: Text(orderDetails.product?.unit ?? "",
                            style: AppTextStyle.s14_w400(color: context.colors.textColor),
                            ),
                          ),
                          Text(
                            tr("total"),
                            style: AppTextStyle.s14_w400(
                                color: context.colors.black),
                          ),
                          Text(
                            " :",
                            style: AppTextStyle.s14_w400(
                                color: context.colors.black),
                          ),
                          Gaps.hGap5,
                          Text(
                            (orderDetails.quantity * orderDetails.getPrice)
                                .toStringAsFixed(2)
                                .formatAmount(),
                            style: AppTextStyle.s14_w600(
                                color: context.colors.primary),
                          ).withDirhamSymbol(),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          if (orderDetails.isAvailableReview && orderDetails.review == null)
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
                        tr("reviewProduct"),
                        style: AppTextStyle.s14_w400(
                            color: context.colors.primary),
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
