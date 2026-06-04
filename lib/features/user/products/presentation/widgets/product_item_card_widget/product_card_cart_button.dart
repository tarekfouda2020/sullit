import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/loading_icon_widget.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/product_counter_widget.dart';
import 'package:flutter_tdd/res.dart';

class ProductCardCartButton extends StatelessWidget {
  final Product productModel;
  final GenericBloc<bool> enableAddToCartLoading;
  final Future<void> Function() onAddToCart;
  final VoidCallback onPressReduce;

  const ProductCardCartButton({
    super.key,
    required this.productModel,
    required this.enableAddToCartLoading,
    required this.onAddToCart,
    required this.onPressReduce,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: enableAddToCartLoading,
      builder: (context, state) {
        return PositionedDirectional(
          end: 3,
          bottom: 0,
          start: (productModel.addedQtyToCart ?? 0) > 0 ? 0 : null,
          child: GestureDetector(
            onTap: state.data || productModel.isOutOfStock
                ? () {}
                : () async => await onAddToCart(),
            child: Opacity(
              opacity: state.data == false && productModel.isOutOfStock == false
                  ? 1
                  : 0.5,
              child: Visibility(
                visible: (productModel.addedQtyToCart ?? 0) > 0,
                replacement: Visibility(
                  visible: state.data == false,
                  replacement: const LoadingIconWidget(),
                  child: _AddToCartIcon(),
                ),
                child: ProductCounterWidget(
                  product: productModel,
                  onPressAdd: () async => await onAddToCart(),
                  onPressDecrease: onPressReduce,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _AddToCartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      margin: Dimens.paddingAll5PX,
      padding: Dimens.paddingAll5PX,
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: BorderRadius.circular(Dimens.dp4),
      ),
      child: SvgPicture.asset(
        Res.addProductToCart,
        width: 14,
        height: 14,
        colorFilter: ColorFilter.mode(context.colors.black, BlendMode.srcIn),
      ),
    );
  }
}
