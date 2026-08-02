import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart/widgets/cart_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/res.dart';

class ProductCounterWidget extends StatelessWidget {
  final ProductCard product;
  final void Function() onPressAdd;
  final void Function() onPressDecrease;

  const ProductCounterWidget(
      {super.key,
      required this.product,
      required this.onPressAdd,
      required this.onPressDecrease});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.colors.customBackground,
          borderRadius: Dimens.borderRadius40PX),
      margin: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildButton(context, onPressDecrease,
              product.addedQtyToCart! == 1 ? Res.trashIcon : Res.minusIcon),
          Text(
            "${product.addedQtyToCart}",
            style: AppTextStyle.s14_w500(color: context.colors.black),
          ),
          _buildButton(context, onPressAdd, Res.plusIcon),
        ],
      ),
    );
  }

  GestureDetector _buildButton(
      BuildContext context, void Function() onTap, String icon) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: Dimens.dp24,
        height: Dimens.dp24,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            color: context.colors.primary, shape: BoxShape.circle),
        child: SvgPicture.asset(icon,
            colorFilter:
                ColorFilter.mode(context.colors.white, BlendMode.srcIn)),
      ),
    );
  }
}
