import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';

import '../../domain/models/product_attributes_options.dart';

class BuildAddToCartAttributeItems extends StatelessWidget {
  final int index;
  final int position;
  final GenericBloc<Product?> productCubit;

  const BuildAddToCartAttributeItems({
    super.key,
    required this.index,
    required this.position,
    required this.productCubit,
  });

  @override
  Widget build(BuildContext context) {
    List<ProductAttributesOptions> allOptions = productCubit.state.data!.choiceOptions!;
    List<String> selectedAttributes = allOptions[index].selectedAttribute!;
    var optionItem = allOptions[index].options![position];
    bool current = selectedAttributes.contains(optionItem);
    return InkWell(
      onTap: () => getIt<CartHelper>().onSelectAttributes(
          context, productCubit, allOptions, index, position),
      child: Container(
        // width: 100.w,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: current ? context.colors.primary : context.colors.greyWhite,
          ),
          borderRadius: Dimens.borderRadius5PX,
        ),
        // alignment: Alignment.center,
        child: Text(
          optionItem,
          style: AppTextStyle.s12_w400(color: context.colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
