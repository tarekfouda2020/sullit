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
        margin: Dimens.standardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productModel.categoryName!,
              style: AppTextStyle.s14_w400(
                color: context.colors.textColor,
              ),
            ),
            Gaps.vGap8,
            Text(
              productModel.name!,
              style: AppTextStyle.s19_w500(
                color: context.colors.black,
              ),
            ),
            Gaps.vGap10,
            Row(
              children: [
                RatingBar.builder(
                  initialRating: productModel.rating!.toDouble(),
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
                  "(${productModel.reviews?.length} ${tr("reviews")})",
                  style: AppTextStyle.s14_w400(
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
            Gaps.vGap10,
            Visibility(
              visible: (productModel.isMultiple == false),
              replacement: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // "${productModel.priceHighLowDiscount.parseCurrency} ",
                    productModel.variant!.mainPrice.parseCurrency,
                    style: AppTextStyle.s22_w600(
                      color: context.colors.primary,
                    ),
                  ),
                  Gaps.hGap8,
                  Visibility(
                    visible:( productModel.hasDiscount!) ||(productModel.variant!.hasDiscount==true),
                    child: Text(
                      // "${productModel.priceHighLow.parseCurrency} ",
                      "${productModel.variant!.originalPrice.parseCurrency} ",
                      style: AppTextStyle.s18_w400(
                        color: context.colors.textColor,
                      ).copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Text(
                    "${productModel.priceHighLowDiscount.parseCurrency} ",
                    style: AppTextStyle.s22_w600(
                      color: context.colors.primary,
                    ),
                  ),
                  Gaps.hGap14,
                  Visibility(
                    visible: productModel.hasDiscount!,
                    child: Text(
                      "${productModel.priceHighLow.parseCurrency} ",
                      style: AppTextStyle.s18_w400(
                        color: context.colors.textColor,
                      ).copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gaps.vGap7,
            BuildSellerInfo(
              shopModel: productModel.shop,
              controller: controller,
            ),
            Gaps.vGap8,
            BuildProductDescription(
              description: productModel.description ?? "",
            ),
          ],
        ),
      ),
    );
  }
}
