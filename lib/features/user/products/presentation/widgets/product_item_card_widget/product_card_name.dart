import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

class ProductCardName extends StatelessWidget {
  final Product productModel;

  const ProductCardName({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Text(
      productModel.name!,
      maxLines: 2,
      style: AppTextStyle.s14_w600(color: context.colors.black)
          .copyWith(overflow: TextOverflow.ellipsis, height: 0),
    );
  }
}
