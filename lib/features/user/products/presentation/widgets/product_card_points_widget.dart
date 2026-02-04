import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/res.dart';

class ProductCardPointsWidget extends StatelessWidget {
  final Product productModel;

  const ProductCardPointsWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      top: 20.r,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
        decoration: BoxDecoration(
          color: context.colors.lightPink2,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              Res.loyaltyIcon,
              width: Dimens.dp16,
              height: Dimens.dp16,
            ),
            Gaps.hGap6,
            Text(
              "${productModel.loyaltyPoints!}",
              style: AppTextStyle.s12_w600(
                color: context.colors.primary,
              ),
            ),
            Gaps.hGap2,
            Text(
              tr("bezat_points"),
              style: AppTextStyle.s12_w600(
                color: context.colors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
