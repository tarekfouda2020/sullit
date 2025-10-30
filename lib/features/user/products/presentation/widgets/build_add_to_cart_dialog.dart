import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/features/general/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart/widgets/cart_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_add_to_cart_attributes.dart';

class BuildAddToCartDialog extends StatefulWidget {
  final Product product;
  final void Function()? afterAddToCart;

  const BuildAddToCartDialog({Key? key, required this.product, this.afterAddToCart}) : super(key: key);

  @override
  State<BuildAddToCartDialog> createState() => _BuildAddToCartDialogState();
}

class _BuildAddToCartDialogState extends State<BuildAddToCartDialog> {
  final GenericBloc<Product?> productCubit = GenericBloc(null);

  @override
  void initState() {
    productCubit.onUpdateData(widget.product);
    if (widget.product.choiceOptions!.isNotEmpty) {
      widget.product.choiceOptions?.map((e) {
        if (e.options!.isNotEmpty && e.options != null) {
          e.selectedAttribute = [];
          e.selectedAttribute?.add(e.options!.first);
          e.hasValue = true;
        }
      }).toList();
      productCubit.onUpdateData(widget.product);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: Dimens.paddingAll20PX,
      content: BlocBuilder<GenericBloc<Product?>, GenericState<Product?>>(
        bloc: productCubit,
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CachedImage(
                url: state.data!.images!.first,
                height: 100.h,
                borderRadius: Dimens.borderRadius5PX,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
              ),
              Gaps.vGap10,
              Row(
                children: [
                  Flexible(
                    child: Text(
                      state.data!.name!,
                      style: AppTextStyle.s16_w500(color: context.colors.black).copyWith(
                        height: 1.3
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '${tr('price')} : ',
                    style: AppTextStyle.s16_w400(color: context.colors.black),
                  ),
                  //const Spacer(),
                  DirhamPrice(
                    currencyStyle:AppTextStyle.s16_w600(
                      color: context.colors.primary,
                    ),
                    amount: showDiscount(context)
                        ? "${state.data!.priceHighLowDiscount} "
                        : "${state.data!.priceHighLow} ",
                    textStyle: AppTextStyle.s14_w600(
                      color: context.colors.primary,
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: showDiscount(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.vGap10,
                    DirhamPrice(
                      showMinus: true,
                     currencyStyle: AppTextStyle.s16_w600(color: context.colors.black).copyWith(
                         decoration: TextDecoration.lineThrough,
                         decorationColor: context.colors.black
                     ),
                     currencyOffset: 1,
                     amount: "${state.data!.priceHighLow} ",
                      textStyle: AppTextStyle.s14_w600(
                        color: context.colors.black,
                      ).copyWith(
                          decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
              Gaps.line(context.colors.grey, 20.h),
              Visibility(
                visible: productCubit.state.data!.choiceOptions!.isNotEmpty,
                child: Flexible(
                  child: BuildProductAttributes(productCubit: productCubit),
                ),
              ),
              Visibility(
                  visible: productCubit.state.data!.choiceOptions!.isNotEmpty,
                  child: Gaps.line(context.colors.greyWhite, 20.h)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${tr('quantity')} : ',
                    style: AppTextStyle.s16_w400(color: context.colors.black),
                  ),
                  BuildCustomBounce(
                    onTap: () => getIt<CartHelper>().onDecreaseQty(productCubit),
                    iconData: Icons.remove,
                  ),
                  Text(
                    "${state.data!.minQty}",
                    style: AppTextStyle.s16_w400(
                      color: context.colors.black,
                    ),
                  ),
                  BuildCustomBounce(
                    onTap: () => getIt<CartHelper>().onIncreaseQty(productCubit),
                    iconData: Icons.add,
                  )
                ],
              ),
              Gaps.line(context.colors.grey, 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${tr('totalPrice')} : ',
                    style: AppTextStyle.s16_w400(
                      color: context.colors.black,
                    ),
                  ),
                  DirhamPrice(
                   amount: _calculablePrice(state.data!),
                    currencyOffset: 0.5,
                    currencyStyle: AppTextStyle.s20_w400(color: context.colors.primary),
                    textStyle: AppTextStyle.s16_w500(color: context.colors.primary),
                  ),
                ],
              ),
              Gaps.vGap24,
              Visibility(
                visible: (state.data!.variant?.currentStock! ?? 0) > 0,
                replacement: Text(
                  tr('outOfStock'),
                  style: AppTextStyle.s16_w800(
                    color: context.colors.black,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    getIt<CartHelper>().addProductToCart(
                      context,
                      state.data!.minQty!,
                      state.data!.variant?.id,
                      onAddCartFunc: () {
                        Navigator.pop(context);
                        widget.afterAddToCart?.call();
                      },
                    );
                  },
                  child: Container(
                    margin: Dimens.paddingHorizontal5PX,
                    padding: Dimens.standardPadding,
                    decoration: BoxDecoration(
                      color: context.colors.primary,
                      borderRadius: Dimens.borderRadius5PX,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: context.colors.white,
                          size: 15,
                        ),
                        Gaps.hGap10,
                        Text(tr('addToCart')),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  bool showDiscount(BuildContext context) {
    bool hasVipDiscount = context.read<UserCubit>().state.model?.hasValidSubscription ?? false;
    bool isVipProduct = widget.product.hasVipOffer!;
    if (isVipProduct) {
      return hasVipDiscount;
    } else {
      return widget.product.hasDiscount!;
    }
  }

  bool _hasSelectedAttributes() {
    if (productCubit.state.data?.choiceOptions == null || productCubit.state.data!.choiceOptions!.isEmpty) {
      return false; // No attributes to select
    }

    for (var option in productCubit.state.data!.choiceOptions!) {
      if (option.options != null && option.options!.isNotEmpty) {
        if (option.selectedAttribute != null && option.selectedAttribute!.isNotEmpty) {
          return true; // At least one attribute is selected
        }
      }
    }
    return false; // No attributes are selected
  }

  String _calculablePrice(Product product) {
    return double.parse(product.variant?.calculablePrice?.split(',').join('') ?? "0.0").toStringAsFixed(2);
  }
}
