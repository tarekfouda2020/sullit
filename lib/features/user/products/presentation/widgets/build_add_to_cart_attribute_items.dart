
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/seller/products/presentation/pages/seller_add_product/seller_add_product_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/add_to_cart_helper.dart';

class BuildAddToCartAttributeItems extends StatelessWidget {
  final List<ProductOptions> optionModel;
  final int index;
  final int position;
  final GenericBloc<Product?> productCubit ;

  const BuildAddToCartAttributeItems({
    super.key,
    required this.optionModel,
    required this.index,
    required this.position, required this.productCubit,
  });

  @override
  Widget build(BuildContext context) {
    bool current = optionModel[index].selectedAttribute!.contains(optionModel[index].options![position]);
    return InkWell(
      onTap: () => getIt<AddToCartHelper>().onSelectAttributes(context, optionModel,productCubit , position,index),
      child: Container(
        width: 100.w,
        padding: Dimens.paddingAll8PX,
        decoration: BoxDecoration(
          border: Border.all(
            color: current ? context.colors.primary : context.colors.greyWhite,
          ),
          borderRadius: Dimens.borderRadius5PX,
        ),
        alignment: Alignment.center,
        child: Text(
          optionModel[index].options![position],
          style: AppTextStyle.s12_w400(
            color: context.colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
