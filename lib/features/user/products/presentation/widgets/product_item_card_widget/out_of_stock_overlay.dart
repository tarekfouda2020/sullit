import 'package:flutter/material.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/oou_of_stock_glass_widget.dart';

class OutOfStockOverlay extends StatelessWidget {
  final ProductCard productModel;

  const OutOfStockOverlay({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: productModel.isOutOfStock,
      child: const Align(
        alignment: Alignment.center,
        child: OutOfStockGlassWidget(),
      ),
    );
  }
}
