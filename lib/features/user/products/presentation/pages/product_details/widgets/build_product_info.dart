part of 'product_details_widgets_imports.dart';

class BuildProductInfo extends StatelessWidget {
  final ProductDetailsController controller;
  final Product productModel;

  const BuildProductInfo(
      {Key? key, required this.controller, required this.productModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: Dimens.paddingAll8PX,
        margin: Dimens.standardPadding,
        decoration: BoxDecoration(
          borderRadius: Dimens.borderRadius5PX,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
              color: context.colors.greyWhite,
              blurRadius: 1,
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: Dimens.paddingVertical8PX,
              child: Text(
                productModel.name,
                style: AppTextStyle.s19_w500(
                  color: context.colors.black,
                ),
              ),
            ),
            Row(
              children: [
                RatingBar.builder(
                  initialRating: productModel.rating.toDouble(),
                  ignoreGestures: true,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 15.sp,
                  unratedColor: context.colors.disableGray,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
                Gaps.hGap5,
                Text(
                  "(${productModel.reviews?.length} reviews)",
                  style: AppTextStyle.s14_w400(
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
            Gaps.vGap10,
            Row(
              children: [
                Text(
                  "${productModel.priceHighLowDiscount} ",
                  style: AppTextStyle.s16_w500(
                    color: context.colors.primary,
                  ),
                ),
                Visibility(
                  visible: productModel.hasDiscount,
                  child: Text(
                    "${productModel.priceHighLow} ",
                    style: AppTextStyle.s16_w500(
                      color: context.colors.black,
                    ).copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ],
            ),
            Gaps.line(context.colors.greyWhite, 10.h),
            BuildSellerInfo(shopModel: productModel.shop),
            BuildProductDescription(
                description: productModel.description ?? ""),
            Gaps.vGap10,
          ],
        ),
      ),
    );
  }
}
