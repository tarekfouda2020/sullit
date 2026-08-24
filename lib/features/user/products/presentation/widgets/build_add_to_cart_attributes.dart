import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_add_to_cart_attribute_list.dart';

import '../../domain/models/product_attributes_options.dart';

class BuildProductAttributes extends StatelessWidget {
  final GenericBloc<Product?> productCubit;

  const BuildProductAttributes({
    super.key,
    required this.productCubit,
  });

  @override
  Widget build(BuildContext context) {
    List<ProductAttributesOptions> options = productCubit.state.data!.choiceOptions!;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Gaps.vGap10,
          ...List.generate(
            options.length,
            (index) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "${options[index].title!} : ",
                    style: AppTextStyle.s18_w400(
                      color: context.colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Gaps.hGap5,
                Flexible(
                  child: BuildAddToCartAttributeList(
                    index: index,
                    productCubit: productCubit,
                  ),
                ),
                Gaps.vGap15,
              ],
            ),
          ),
          Gaps.line(Colors.transparent, 20.h),
        ],
      ),
    );
  }
}
