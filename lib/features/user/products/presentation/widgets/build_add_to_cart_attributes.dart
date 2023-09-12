import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_add_to_cart_attribute_list.dart';

class BuildProductAttributes extends StatelessWidget {
  final GenericBloc<Product?> productCubit;

  const BuildProductAttributes({
    super.key,
    required this.productCubit,
  });

  @override
  Widget build(BuildContext context) {
    List<ProductOptions> options = productCubit.state.data!.choiceOptions!;
    return Visibility(
      visible: options.isNotEmpty,
      replacement: Gaps.vGap5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          ...List.generate(
            options.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  options[index].title!,
                  style: AppTextStyle.s16_w400(
                    color: context.colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                Gaps.vGap10,
                BuildAddToCartAttributeList(
                  index: index,
                  productCubit: productCubit,
                ),
                Gaps.vGap15,
              ],
            ),
          ),
          Gaps.line(context.colors.greyWhite, 20.h),
        ],
      ),
    );
  }
}
