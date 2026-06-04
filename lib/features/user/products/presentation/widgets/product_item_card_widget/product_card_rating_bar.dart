import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

class ProductCardRatingBar extends StatelessWidget {
  final Product productModel;

  const ProductCardRatingBar({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: (productModel.rating ?? 0).toDouble(),
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
      onRatingUpdate: (_) {},
    );
  }
}
