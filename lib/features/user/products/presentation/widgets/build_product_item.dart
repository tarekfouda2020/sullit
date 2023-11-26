import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/widgets/category_details_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart';
import 'package:flutter_tdd/res.dart';

class BuildProductItem extends StatelessWidget {
  final Product productModel;
  final VoidCallback onFavRefresh;
  final VoidCallback onCompareRefresh;
  final bool? isForCompare;

  const BuildProductItem({
    super.key,
    required this.productModel,
    required this.onFavRefresh,
    required this.onCompareRefresh,
    this.isForCompare = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: const CustomDecoration(myBoxShadow: []),
      child: InkWell(
        onTap: () => AutoRouter.of(context).push(
          ProductDetailsRoute(
            productId: productModel.id!,
            isResale: productModel.isResale!,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CachedImage(
                  height: 150,
                  fit: BoxFit.fill,
                  haveRadius: true,
                  bgColor: const Color(0xffededed),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(Dimens.dp5),
                  ),
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
                            tr('off'),
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
                        onTap: () => ProductsHelper().toggleFavourite(
                          id: productModel.id!,
                          context: context,
                          onRefresh: onFavRefresh,
                        ),
                        checkValue: productModel.isWishlist,
                      ),
                      BuildIconItem(
                        isFormCompare: isForCompare,
                        iconData: Icons.compare_arrows,
                        checkValue: productModel.isAddedTCompare,
                        onTap: () {
                          getIt<ProductsHelper>().addProductToCompare(
                            context: context,
                            product: productModel,
                          );
                          onCompareRefresh.call();
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productModel.categoryName!,
                    style: AppTextStyle.s10_w400(
                      color: context.colors.grey,
                    ).copyWith(overflow: TextOverflow.ellipsis, height: 0),
                  ),
                  Text(
                    productModel.name!,
                    style: AppTextStyle.s13_w500(
                      color: context.colors.black,
                    ).copyWith(overflow: TextOverflow.ellipsis, height: 0),
                  ),
                  Gaps.vGap5,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productModel.priceHighLowDiscount!,
                              style: AppTextStyle.s11_bold(
                                color: context.colors.primary,
                              ),
                            ),
                            Visibility(
                              visible: productModel.hasDiscount!,
                              child: Text(
                                productModel.priceHighLow!,
                                style: AppTextStyle.s10_w400(
                                  color: context.colors.grey,
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
                        onTap: () => getIt<CartHelper>().addToCartDialog(
                          context,
                          productModel,
                        ),
                        child: Container(
                          height: 25,
                          width: 25,
                          padding: Dimens.paddingAll5PX,
                          decoration: BoxDecoration(
                            color: context.colors.bgIcon,
                            borderRadius: BorderRadius.circular(Dimens.dp4),
                          ),
                          child: SvgPicture.asset(
                            Res.cart,
                            color: context.colors.textColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // RatingBar.builder(
                  //   initialRating: productModel.rating!.toDouble(),
                  //   ignoreGestures: true,
                  //   minRating: 1,
                  //   direction: Axis.horizontal,
                  //   allowHalfRating: true,
                  //   itemCount: 5,
                  //   itemSize: 16,
                  //   unratedColor: context.colors.disableGray,
                  //   itemPadding: const EdgeInsets.only(bottom: 5).r,
                  //   itemBuilder: (context, _) => const Icon(
                  //     Icons.star,
                  //     color: Colors.amber,
                  //   ),
                  //   onRatingUpdate: (rating) {},
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
