import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/core/widgets/loading_icon_widget.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/widgets/category_details_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart';
import 'package:flutter_tdd/res.dart';

class BuildProductItem extends StatefulWidget {
  final Product productModel;
  final VoidCallback onFavRefresh;
  final VoidCallback? onCompareRefresh;
  final VoidCallback? afterAddToCart;
  final VoidCallback? onRefresh;
  final bool? showVipDiscount;
  final EdgeInsetsDirectional? margin;

  const BuildProductItem({
    super.key,
    required this.productModel,
    required this.onFavRefresh,
    this.onCompareRefresh,
    this.showVipDiscount,
    this.afterAddToCart,
    this.onRefresh,
    this.margin,
  });

  @override
  State<BuildProductItem> createState() => _BuildProductItemState();
}

class _BuildProductItemState extends State<BuildProductItem> {
  final GenericBloc<bool> showLoading = GenericBloc<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? const EdgeInsets.all(0),
      width: 160,
      decoration: CustomDecoration(
          myBoxShadow: const [],
          radius: Dimens.borderRadius12PX,
          boxBorder: Border.all(
            color: context.colors.greyWhite,
          )),
      child: InkWell(
        onTap: () async  => await _routeToDetails(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  CachedImage(
                    ///TODO border color from top will be changed later
                    fit: BoxFit.fill,
                    haveRadius: true,
                    bgColor: const Color(0xffededed),
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(Dimens.dp12),
                    ),
                    url: widget.productModel.thumbnailImage!,
                  ),
                  Visibility(
                    visible: widget.productModel.hasDiscount!,
                    replacement: Visibility(
                        visible: (widget.showVipDiscount ?? false) && widget.productModel.hasVipOffer!,
                        child: _discountWidget(context)),
                    child: _discountWidget(context),
                  ),
                  PositionedDirectional(
                    end: 3,
                    child: Column(
                      children: [
                        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                          bloc: showLoading,
                          builder: (context, state) {
                            return Visibility(
                              visible: state.data,
                              replacement: BuildIconItem(
                                icon: widget.productModel.isWishlist! ? Res.favIcon : Res.emptyFavIcon,
                                changeBgColor: false,
                                onTap: () => ProductsHelper().toggleFavourite(
                                  id: widget.productModel.id!,
                                  context: context,
                                  loadingBloc: showLoading,
                                  onRefresh: widget.onFavRefresh,
                                ),
                                checkValue: widget.productModel.isWishlist,
                              ),
                              child: const LoadingIconWidget(),
                            );
                          },
                        ),
                        // BuildCompareItem(
                        //   productModel: productModel,
                        //   onTap: () {
                        //     onCompareRefresh?.call();
                        //   },
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productModel.categoryName!,
                    style: AppTextStyle.s12_w300(
                      color: context.colors.textColor,
                    ).copyWith(overflow: TextOverflow.ellipsis, height: 0),
                  ),
                  Gaps.vGap3,
                  Text(
                    widget.productModel.name!,
                    maxLines: 1,
                    style: AppTextStyle.s14_w600(
                      color: context.colors.black,
                    ).copyWith(overflow: TextOverflow.ellipsis, height: 0),
                  ),
                  Gaps.vGap3,
                  // if((productModel.rating ?? 0.0) > 0)
                  RatingBar.builder(
                    initialRating: (widget.productModel.rating ?? 0).toDouble(),
                    minRating: 0.5,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    glow: false,
                    ignoreGestures: true,
                    updateOnDrag: false,
                    itemCount: 5,
                    itemSize: 13,
                    unratedColor: context.colors.deepGray,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rounded,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  // if((productModel.rating ?? 0.0) > 0)
                  Gaps.vGap6,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DirhamPrice(
                              amount: widget.productModel.variant!.calculablePrice ?? "0.0",

                            ),
                            Gaps.vGap3,
                            Visibility(
                              visible: widget.productModel.hasDiscount ?? false || (widget.showVipDiscount ?? false),
                              child: DirhamPrice(
                                amount: widget.productModel.priceHighLow ?? "0.0",
                                showMinus: true,
                                currencyOffset: 1,
                                color: context.colors.textColor,
                                textStyle: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  decoration:  TextDecoration.lineThrough,
                                  decorationColor: context.colors.textColor,
                                  decorationThickness: 1.2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () => getIt<CartHelper>().addToCartDialog(
                          context,
                          widget.productModel,
                          afterAddToCart: widget.afterAddToCart,
                        ),
                        child: Container(
                          height: 25,
                          width: 25,
                          padding: Dimens.paddingAll5PX,
                          decoration: BoxDecoration(
                            color: context.colors.customBackground,
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
                  //         Icons.star,
                  //         color: Colors.amber,
                  //       ),
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

  Future<void> _routeToDetails(BuildContext context) async {
    await AutoRouter.of(context).push(
      ProductDetailsRoute(
        isFav: widget.productModel.isWishlist!,
        productId: widget.productModel.id!,
        isResale: widget.productModel.isResale!,
      ),
    );
    widget.onRefresh?.call();
    widget.onFavRefresh.call();
  }

  PositionedDirectional _discountWidget(BuildContext context) {
    return PositionedDirectional(
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
              widget.productModel.discount!,
              style: AppTextStyle.s12_w600(
                color: context.colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
