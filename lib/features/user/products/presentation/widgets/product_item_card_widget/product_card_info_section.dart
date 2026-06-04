import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'product_card_name.dart';
import 'product_card_rating_bar.dart';
import 'product_card_price_section.dart';

class ProductCardInfoSection extends StatelessWidget {
  final Product productModel;
  final bool? showVipDiscount;

  const ProductCardInfoSection({
    super.key,
    required this.productModel,
    this.showVipDiscount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductCardName(productModel: productModel),
          Gaps.vGap3,
          ProductCardRatingBar(productModel: productModel),
          Gaps.vGap6,
          ProductCardPriceSection(
            productModel: productModel,
            showVipDiscount: showVipDiscount,
          ),
        ],
      ),
    );
  }
}
