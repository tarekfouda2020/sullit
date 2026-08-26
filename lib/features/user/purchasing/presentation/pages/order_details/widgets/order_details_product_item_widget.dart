part of 'order_details_widgets_imports.dart';

class OrderDetailsProductItemWidget extends StatelessWidget {
  final bool hasReview;
  final void Function()? onPressReview;
  final OrderDisplayItem displayItem;

  const OrderDetailsProductItemWidget(
      {super.key,
      required this.hasReview,
      this.onPressReview,
        required this.displayItem,
      });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
          margin: const EdgeInsets.symmetric(vertical: 8),
          decoration: CustomDecoration(
            thisColor: context.colors.white,
              boxBorder: Border.all(color: context.colors.gray3),
              myBoxShadow: const []),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CachedImage(
                    url: displayItem.thumbnailImage,
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
                            "${displayItem.name } ${displayItem.current?.variation ?? ""}",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.s14_w600(color: context.colors.black).copyWith(
                              height: 1.3
                            ),
                          ),
                          Gaps.vGap5,
                          if (displayItem.current?.cartOptions?.isNotEmpty == true)
                            CartSheetItemOptionsWidget(
                              cartOptions: displayItem.current!.cartOptions!,
                            ),
                          Gaps.vGap5,
                          if (displayItem.current?.product != null &&
                              !displayItem.isRemoved &&
                              !displayItem.isReplace)
                            RatingBar.builder(
                              initialRating: (displayItem.current!.review?.rate ??
                                      displayItem.current!.product?.rating ??
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
                          OrderDetailsPriceQuantityWidget(displayItem: displayItem),
                          Gaps.vGap7,
                          // OrderDetailsTotalWidget(displayItem: displayItem),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              if (hasReview &&
                  displayItem.current?.isAvailableReview == true &&
                  displayItem.current?.review == null)
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
                ),
            ],
          ),
        ),
        if (displayItem.isModifiedInPlace)
          Positioned(
            top: 0,
            right: 0,
            child: Transform.translate(
              offset: const Offset(8, -8),
              child: const OrderDetailsModifiedBadgeWidget(),
            ),
          ),
      ],
    );
  }
}
