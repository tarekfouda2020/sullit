
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/res.dart';

class CartMinAmountNeededWidget extends StatelessWidget {
  final String minAmount;
  const CartMinAmountNeededWidget({super.key, required this.minAmount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Res.warningIcon,
          width: Dimens.dp17,
          height: Dimens.dp17,
        ),
        Gaps.hGap6,
        DirhamPrice(amount: minAmount,
          textStyle: AppTextStyle.s16_w500(color: context.colors.primary),
        ),
        Gaps.hGap2,
        Text("needed to reach minimum order",
          style: AppTextStyle.s14_w400(color: context.colors.primary),
        )
      ],
    );
  }
}
