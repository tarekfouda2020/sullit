import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:flutter_tdd/res.dart';

class DiscountBadge extends StatelessWidget {
  final ProductCard productModel;
  final bool? showVipDiscount;

  const DiscountBadge({
    super.key,
    required this.productModel,
    this.showVipDiscount,
  });

  @override
  Widget build(BuildContext context) {
    final bool showDiscount = productModel.hasDiscount! ||
        ((showVipDiscount ?? false) && productModel.hasVipOffer!);

    return Visibility(
      visible: showDiscount,
      child: PositionedDirectional(
        top: 20.r,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
          decoration: BoxDecoration(
            color: context.colors.lightPink2,
          ),
          child: Row(
            children: [
              SvgPicture.asset(Res.vouchers, width: Dimens.dp22),
              Gaps.hGap6,
              Text(
                tr('off'),
                style: AppTextStyle.s12_w600(color: context.colors.primary),
              ),
              Gaps.hGap2,
              Text(
                productModel.discount ?? "",
                style: AppTextStyle.s12_w600(color: context.colors.primary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
