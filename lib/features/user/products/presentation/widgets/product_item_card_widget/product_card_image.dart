import 'package:flutter/material.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/product_image_widget.dart';

class ProductCardImage extends StatelessWidget {
  final Product productModel;

  const ProductCardImage({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: productModel.isOutOfStock ? 0.5 : 1,
      child: ProductImageWidget(
        url: productModel.thumbnailImage ?? "",
      ),
    );
  }
}
