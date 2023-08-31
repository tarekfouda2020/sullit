import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/widgets/category_details_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/add_to_cart_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart';

class BuildProductItem extends StatelessWidget {
  final Product productModel;
  final VoidCallback onFavRefresh;
  final VoidCallback onCompareRefresh;


  const BuildProductItem(
      {super.key, required this.productModel, required this.onFavRefresh, required this.onCompareRefresh,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      decoration: CustomDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                CachedImage(
                  fit: BoxFit.fill,
                  haveRadius: true,
                  borderRadius: Dimens.borderRadius5PX,
                  url: productModel.thumbnailImage!,
                ),
                Visibility(
                  visible: productModel.hasDiscount!,
                  child: PositionedDirectional(
                    top: 20.r,
                    child: Container(
                      padding: Dimens.paddingAll3PX,
                      decoration: BoxDecoration(
                        color: context.colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: context.colors.greyWhite,
                            blurRadius: 1,
                            spreadRadius: 1,
                          )
                        ],
                        borderRadius: const BorderRadiusDirectional.only(
                          topEnd: Radius.circular(40),
                          bottomEnd: Radius.circular(40),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "OFF",
                            style: AppTextStyle.s10_w400(
                              color: context.colors.primary,
                            ),
                          ),
                          Container(
                            padding: Dimens.paddingAll5PX,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: context.colors.primary,
                            ),
                            child: Text(
                              productModel.discount!,
                              style: AppTextStyle.s10_w400(
                                color: context.colors.white,
                              ),
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
                        iconData: productModel.isWishlist!
                            ? Icons.favorite
                            : Icons.favorite_border,
                        containerColor: productModel.isWishlist!
                            ? context.colors.primary
                            : context.colors.white,
                        onTap: () => ProductsHelper().toggleFavourite(
                          id: productModel.id!,
                          onRefresh: onFavRefresh,
                          context: context,
                        ),
                        checkValue: productModel.isWishlist,
                      ),
                      BuildIconItem(
                        containerColor: productModel.isAddedTCompare! ? context.colors.primary : context.colors.white ,
                        iconData: Icons.compare_arrows,
                        checkValue: productModel.isAddedTCompare,
                        onTap: () {
                          getIt<ProductsHelper>().addProductToCompare(productModel, context);
                          onCompareRefresh.call();
                        },
                      ),
                      BuildIconItem(
                        iconData: Icons.shopping_cart,
                        onTap: () =>
                            getIt<AddToCartHelper>().addToCartDialog(
                          context,
                          productModel,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () =>
                AutoRouter.of(context).push(
                  ProductDetailsRoute(
                    productId: productModel.id!,
                    isResale: productModel.isResale!,
                  ),
                ),
            child
                : Padding(
              padding: Dimens.paddingAll8PX,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productModel.priceHighLowDiscount!,
                    style: AppTextStyle.s11_bold(
                      color: context.colors.primary,
                    ),
                  ),
                  Gaps.vGap3,
                  Visibility(
                    visible: productModel.hasDiscount!,
                    child: Text(
                      productModel.priceHighLow!,
                      style: AppTextStyle.s11_bold(
                        color: context.colors.black,
                      ).copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: productModel.rating!.toDouble(),
                    ignoreGestures: true,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 16,
                    unratedColor: context.colors.disableGray,
                    itemPadding: const EdgeInsets.only(bottom: 5).r,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  Text(
                    productModel.name!,
                    style: AppTextStyle.s13_w500(
                      color: context.colors.black,
                    ).copyWith(
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
