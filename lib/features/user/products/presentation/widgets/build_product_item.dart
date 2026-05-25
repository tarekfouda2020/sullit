import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/debounce_helper.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/core/widgets/loading_icon_widget.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart_item.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/widgets/category_details_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/product_counter_widget.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/product_image_widget.dart';
import 'package:flutter_tdd/res.dart';

import 'oou_of_stock_glass_widget.dart';
import 'product_card_points_widget.dart';

class BuildProductItem extends StatefulWidget {
  final Product productModel;
  final VoidCallback onFavRefresh;
  final VoidCallback? onCompareRefresh;
  final VoidCallback? afterAddToCart;
  final VoidCallback? onRefresh;
  final Future<void> Function()? onPressDecrease;
  final Future<void> Function()? onPressDelete;
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
    this.onPressDecrease,
    this.onPressDelete,
    this.margin,
  });

  @override
  State<BuildProductItem> createState() => _BuildProductItemState();
}

class _BuildProductItemState extends State<BuildProductItem> {
  final GenericBloc<bool> showFavLoading = GenericBloc<bool>(false);

  final GenericBloc<bool> enableAddToCartLoading = GenericBloc<bool>(false);

  @override
  void initState() {
    super.initState();
    _checkIfItemInCart();
  }

  @override
  void didUpdateWidget(covariant BuildProductItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.productModel.id == oldWidget.productModel.id) {
      _checkIfItemInCart();
    }
  }

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
        onTap: () async => await _routeToDetails(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Opacity(
                    opacity: widget.productModel.isOutOfStock
                        ?0.5
                        :1,
                    child: ProductImageWidget(
                      url: widget.productModel.thumbnailImage ?? "",
                    ),
                  ),
                  Visibility(
                      visible: widget.productModel.isOutOfStock,
                      child: const Align(
                          alignment: Alignment.center,
                          child: OutOfStockGlassWidget())
                  ),
                  Visibility(
                    // visible:widget.productModel.showSpecialPoints ,
                    visible:false,
                    replacement: Visibility(
                      visible: widget.productModel.hasDiscount!,
                      replacement: Visibility(
                          visible: (widget.showVipDiscount ?? false) && widget.productModel.hasVipOffer!,
                          child:  _discountWidget(context)),
                      child: _discountWidget(context),
                    ),
                    child: ProductCardPointsWidget(productModel: widget.productModel),
                  ),
                  PositionedDirectional(
                    end: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                          bloc: showFavLoading,
                          builder: (context, state) {
                            return Visibility(
                              visible: state.data,
                              replacement: BuildIconItem(
                                icon: widget.productModel.isWishlist!
                                    ? Res.favIcon
                                    : Res.emptyFavIcon,
                                changeBgColor: false,
                                inActiveColor: context.colors.customBackground,
                                onTap: () => _buildToggleFavourite(context),
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
                  ),
                  BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                    bloc: enableAddToCartLoading,
                    builder: (context, state) {
                      return PositionedDirectional(
                        end: 3,
                        bottom: 0,
                        start:
                        (widget.productModel.addedQtyToCart??0) > 0 ? 0 : null,
                        child: GestureDetector(
                          // onTap: () => getIt<CartHelper>().addToCartDialog(
                          //   context,
                          //   widget.productModel,
                          //   afterAddToCart: widget.afterAddToCart,
                          // ),
                          onTap: state.data || widget.productModel.isOutOfStock
                              ? () {}
                              : () async => await _addToCart(context),
                          child: Opacity(
                            opacity: state.data == false && widget.productModel.isOutOfStock == false ? 1 : 0.5,
                            child: Visibility(
                              visible: (widget.productModel.addedQtyToCart??0) > 0,
                              replacement: Visibility(
                                visible: state.data == false,
                                replacement: const LoadingIconWidget(),
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  margin: Dimens.paddingAll5PX,
                                  padding: Dimens.paddingAll5PX,
                                  decoration: BoxDecoration(
                                    color: context.colors.customBackground,
                                    borderRadius:
                                        BorderRadius.circular(Dimens.dp4),
                                  ),
                                  child: SvgPicture.asset(
                                    Res.addProductToCart,
                                    width: 14,
                                    height: 14,
                                    colorFilter: ColorFilter.mode(
                                        context.colors.black, BlendMode.srcIn),
                                  ),
                                ),
                              ),
                              child: ProductCounterWidget(
                                product: widget.productModel,
                                onPressAdd: () async =>
                                    await _addToCart(context),
                                onPressDecrease: () => _onPressReduce(),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
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
                    widget.productModel.name!,
                    maxLines: 2,
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
                            Row(
                              children: [
                                DirhamPrice(
                                  amount: widget.productModel.variant
                                          ?.calculablePrice ??
                                      "0.0",
                                ),
                                if (widget.productModel.unit != null &&
                                    widget.productModel.unit?.isNotEmpty ==
                                        true)
                                  Flexible(
                                    child: Text(
                                        " / ${widget.productModel.unit}",
                                        style: AppTextStyle.s16_w400(
                                            color: context.colors.textColor),
                                        overflow: TextOverflow.ellipsis),
                                  )
                              ],
                            ),
                            Gaps.vGap3,
                            Visibility(
                              visible:widget.productModel.showPriceDiscount(showVipDiscount: widget.showVipDiscount) ,
                              child: Row(
                                children: [
                                  DirhamPrice(
                                    amount: widget.productModel.priceHighLow ??
                                        "0.0",
                                    showMinus: true,
                                    currencyOffset: 1,
                                    color: context.colors.textColor,
                                    textStyle: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: context.colors.textColor,
                                      decorationThickness: 1.2,
                                    ),
                                  ),
                                  if (widget.productModel.unit != null)
                                    Flexible(
                                      child: Text(
                                        " / ${widget.productModel.unit}",
                                        style: AppTextStyle.s16_w400(
                                                color: context.colors.textColor)
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                decorationColor:
                                                    context.colors.textColor,
                                                overflow:
                                                    TextOverflow.ellipsis),
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ],
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

  Future<void> _buildToggleFavourite(BuildContext context) async {
    ProductsHelper().toggleFavourite(
      id: widget.productModel.id!,
      context: context,
      loadingBloc: showFavLoading,
      price: widget.productModel.priceHighLow,
      onRefresh: widget.onFavRefresh,
    );
  }

  Future<void> _onPressReduce() async {
    final String productKey = widget.productModel.id.toString();
    if (widget.productModel.addedQtyToCart == widget.productModel.minQty) {
      await _deleteItemFromCart();
    } else {
      widget.productModel.addedQtyToCart =
          widget.productModel.addedQtyToCart! - 1;
      enableAddToCartLoading.onUpdateData(false);
      KeyedDebounceHelper.instance.start(
        key: productKey,
        value: widget.productModel.addedQtyToCart.toString(),
        milliseconds: AppConstants.instance.debounceTimeInBackGround,
        onSearch: (val) {
          _reduceQntFromCart(widget.productModel.addedQtyToCart!);
        },
      );
    }
  }

  Future<void> _reduceQntFromCart(int qnt) async {
    var result = await getIt<ProductsHelper>()
        .reduceProductQntInCart(context, widget.productModel, qnt);
    if (result == true) {
      if (widget.onPressDecrease != null) {
        await widget.onPressDecrease?.call();
      }
    }
  }

  Future<void> _deleteItemFromCart() async {
    enableAddToCartLoading.onUpdateData(true);
    var deleteResult = await getIt<ProductsHelper>()
        .deleteProductInCartFromProductsList(context, widget.productModel);
    if (deleteResult) {
      widget.productModel.addedQtyToCart = 0;
      if (widget.onPressDelete != null) {
        await widget.onPressDelete?.call();
      }
    }
    enableAddToCartLoading.onUpdateData(false);
  }

  Future<void> _addToCart(BuildContext context) async {

    if ((widget.productModel.isOutOfStock ||widget.productModel.sameQntInCart) && widget.productModel.isFreshProduct == false) {
      CustomToast.showSimpleToast(msg: tr("outOfStock"), type: ToastType.error);
      return;
    }
    if (widget.productModel.addedQtyToCart == null ||
        widget.productModel.addedQtyToCart == 0) {
      enableAddToCartLoading.onUpdateData(true);
      await getIt<ProductsHelper>().addProductToCart(
          context, widget.productModel,
          afterAddToCart: () => _afterAddToCart());
      enableAddToCartLoading.onUpdateData(false);
    } else {
      var currentStockQnt = widget.productModel.variant?.currentStock ?? 0;
      int qnt = widget.productModel.addedQtyToCart! + 1;

      if(widget.productModel.maxQnt == qnt){
        enableAddToCartLoading.onUpdateData(false);
        CustomToast.showSimpleToast(
            msg: 'You can add up to ${widget.productModel.maxQnt} items only');
        return ;
      }
      if (currentStockQnt > qnt || widget.productModel.isFresh == true) {
        widget.productModel.addedQtyToCart = qnt;
        enableAddToCartLoading.onUpdateData(false);
        KeyedDebounceHelper.instance.start(
          key: widget.productModel.id.toString(),
          value: qnt.toString(),
          milliseconds: AppConstants.instance.debounceTimeInBackGround,
          onSearch: (val) => getIt<ProductsHelper>()
              .increaseProductAddedQntInCart(context, widget.productModel, qnt),
        );
      }
    }
  }

  void _afterAddToCart() {
    widget.productModel.addedQtyToCart =
        widget.productModel.addedQtyToCart! + 1;
    widget.afterAddToCart?.call();
  }

  void _checkIfItemInCart() {
    final List<CartItem>? cartProducts =
        getIt<CartHelper>().cartItemsBloc.state.data.items;
    final Set<int>? cartProductsIds =
        cartProducts?.map((e) => e.productId).toSet();
    if (cartProductsIds?.contains(widget.productModel.id) == true) {
      CartItem? cartProduct = cartProducts?.firstWhere(
          (element) => element.productId == widget.productModel.id);
      widget.productModel.addedQtyToCart = cartProduct?.quantity;
    }
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
  }

  PositionedDirectional _discountWidget(BuildContext context) {
    return PositionedDirectional(
      top: 20.r,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
        decoration: BoxDecoration(
          color: context.colors.lightPink2,
        ),
        child: Row(
          children: [
            SvgPicture.asset(Res.vouchers,width: Dimens.dp22, ),
            Gaps.hGap6,
            Text(
              tr('off'),
              style: AppTextStyle.s12_w600(
                color: context.colors.primary,
              ),
            ),
            Gaps.hGap2,
            Text(
              widget.productModel.discount!,
              style: AppTextStyle.s12_w600(
                color: context.colors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }


}
