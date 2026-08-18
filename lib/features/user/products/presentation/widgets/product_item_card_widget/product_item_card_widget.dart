import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';

import 'product_card_image.dart';
import 'out_of_stock_overlay.dart';
import 'discount_badge.dart';
import 'product_card_fav_button.dart';
import 'product_card_cart_button.dart';
import 'product_card_info_section.dart';

class ProductItemCard extends StatelessWidget {
  final ProductCard productModel;
  final bool? showVipDiscount;
  final GenericBloc<bool> showFavLoading;
  final GenericBloc<bool> enableAddToCartLoading;
  final VoidCallback onFavTap;
  final Future<void> Function() onAddToCart;
  final VoidCallback onPressReduce;
  final Future<void> Function() onRoutToDetails;

  const ProductItemCard({
    super.key,
    required this.productModel,
    required this.showFavLoading,
    required this.enableAddToCartLoading,
    required this.onFavTap,
    required this.onAddToCart,
    required this.onPressReduce,
    required this.onRoutToDetails,
    this.showVipDiscount,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async => await onRoutToDetails(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ProductCardImage(productModel: productModel),
                OutOfStockOverlay(productModel: productModel),
                DiscountBadge(
                  productModel: productModel,
                  showVipDiscount: showVipDiscount,
                ),
                ProductCardFavButton(
                  productModel: productModel,
                  showFavLoading: showFavLoading,
                  onFavTap: onFavTap,
                ),
                ProductCardCartButton(
                  productModel: productModel,
                  enableAddToCartLoading: enableAddToCartLoading,
                  onAddToCart: onAddToCart,
                  onPressReduce: onPressReduce,
                ),
              ],
            ),
          ),
          ProductCardInfoSection(
            productModel: productModel,
            showVipDiscount: showVipDiscount,
          ),
        ],
      ),
    );
  }
}
