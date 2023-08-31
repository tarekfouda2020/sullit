import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_add_to_cart_attribute_items.dart';

class BuildAddToCartAttributeList extends StatelessWidget {
  final int index;
  final List<ProductOptions> productOptions;
  final GenericBloc<Product?> productCubit ;

  const BuildAddToCartAttributeList(
      {super.key,
      required this.index,
      required this.productOptions, required this.productCubit});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 5.r,
      spacing: 5.r,
      children: List.generate(
        productOptions[index].options!.length,
        (position) => BuildAddToCartAttributeItems(
          optionModel: productOptions,
          index: index,
          position: position,
          productCubit: productCubit,
        ),
      ),
    );
  }
}
