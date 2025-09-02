part of 'seller_products_widgets_imports.dart';

class SellerProductItemModel {
  final String id;
  final String name;
  final String categoryName;
  final String thumbnailImage;
  final String price;
  final String originalPrice;
  final double rating;
  final bool hasDiscount;
  final String discount;
  final bool isWishlist;

  SellerProductItemModel({
    required this.id,
    required this.name,
    required this.categoryName,
    required this.thumbnailImage,
    required this.price,
    required this.originalPrice,
    required this.rating,
    required this.hasDiscount,
    required this.discount,
    required this.isWishlist,
  });
}

class SellerProductItemWidget extends StatelessWidget {
  final SellerProductItemModel productModel;
  final VoidCallback? onFavRefresh;

  const SellerProductItemWidget({
    super.key,
    required this.productModel,
    this.onFavRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: CustomDecoration(
          myBoxShadow: const [],
          radius: Dimens.borderRadius12PX,
          boxBorder: Border.all(
            color: context.colors.greyWhite,
          )),
      child: InkWell(
        onTap: () {
          // Navigate to product details
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  CachedImage(
                    fit: BoxFit.fill,
                    haveRadius: true,
                    bgColor: const Color(0xffededed),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(Dimens.dp12),
                    ),
                    url: productModel.thumbnailImage,
                  ),
                  Visibility(
                    visible: productModel.hasDiscount,
                    child: PositionedDirectional(
                      top: 20.r,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                        decoration: BoxDecoration(
                          color: context.colors.primary,
                        ),
                        child: Row(
                          children: [
                            Text(
                              tr('off'),
                              style: AppTextStyle.s12_w600(
                                color: context.colors.white,
                              ),
                            ),
                            Gaps.hGap2,
                            Text(
                              productModel.discount,
                              style: AppTextStyle.s12_w600(
                                color: context.colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    end: 3,
                    child: Column(
                      children: [
                        BuildIconItem(
                          icon: productModel.isWishlist ? Res.favIcon : Res.emptyFavIcon,
                          changeBgColor: false,
                          onTap: () {
                            // Handle favorite toggle
                          },
                          checkValue: productModel.isWishlist,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productModel.categoryName,
                    style: AppTextStyle.s12_w300(
                      color: context.colors.textColor,
                    ).copyWith(overflow: TextOverflow.ellipsis, height: 0),
                  ),
                  Gaps.vGap3,
                  Text(
                    productModel.name,
                    maxLines: 1,
                    style: AppTextStyle.s14_w600(
                      color: context.colors.black,
                    ).copyWith(overflow: TextOverflow.ellipsis, height: 0),
                  ),
                  Gaps.vGap3,
                  RatingBar.builder(
                    initialRating: productModel.rating,
                    minRating: 0.5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    glow: false,
                    ignoreGestures: true,
                    updateOnDrag: false,
                    itemCount: 5,
                    itemSize: 15,
                    unratedColor: context.colors.deepGray,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rounded,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  Gaps.vGap6,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productModel.price,
                              style: AppTextStyle.s14_w600(
                                color: context.colors.primary,
                              ),
                            ),
                            Gaps.vGap3,
                            Visibility(
                              visible: productModel.hasDiscount,
                              child: Text(
                                productModel.originalPrice,
                                style: AppTextStyle.s12_w400(
                                  color: context.colors.textColor,
                                ).copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Handle add to cart
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          padding: Dimens.paddingAll5PX,
                          decoration: BoxDecoration(
                            color: context.colors.bgIcon,
                            borderRadius: BorderRadius.circular(Dimens.dp4),
                          ),
                          child: SvgPicture.asset(
                            Res.shopCart,
                            width: 14,
                            height: 14,
                            colorFilter: ColorFilter.mode(context.colors.black, BlendMode.srcIn),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
