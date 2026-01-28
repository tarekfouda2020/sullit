
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/themes/app_theme.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';

class DirhamPrice extends StatelessWidget {
  final String amount;
  final Color? color;
  final bool showDecimals;
  final int decimalPlaces;
  final bool useAlternativeSymbol;
  final bool? showMinus;
  final bool? applySameStyle;
  final bool? applyDashSeperate;
  final TextStyle? textStyle;
  final TextStyle? currencyStyle;
  final TextDirection? textDirection;
  final CrossAxisAlignment? crossAxisAlignment;
  final double? currencyOffset;

  const  DirhamPrice({
    Key? key,
    required this.amount,
    this.color,
    this.showDecimals = true,
    this.decimalPlaces = 2,
    this.useAlternativeSymbol = false,
    this.textStyle,
    this.currencyStyle,
    this.textDirection,
    this.crossAxisAlignment,
    this.currencyOffset,
    this.showMinus = false,
    this.applySameStyle = true,
    this.applyDashSeperate = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle baseTextStyle = AppTextStyle.s16_w400(color: color ?? context.colors.primary).merge(textStyle);

    final TextStyle? finalCurrencyStyle = currencyStyle ?? (applySameStyle! ? baseTextStyle : null);

    return Directionality(
      textDirection: textDirection ?? TextDirection.ltr,
      child: Row(
        crossAxisAlignment: crossAxisAlignment?? CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          DirhamCurrencySymbol(
            // size: currencySize ?? finalCurrencyStyle?.fontSize ?? size ?? Dimens.font_sp16,
            // color: currencyColor ?? finalCurrencyStyle?.color ?? color ?? context.colors.primary,
            // fontWeight: currencyFontWeight ?? finalCurrencyStyle?.fontWeight ?? FontWeight.w400,
            useAlternativeSymbol: useAlternativeSymbol,
            currencyOffset: currencyOffset,
            textStyle: finalCurrencyStyle,
          ),
          if (showMinus == false) Gaps.hGap2,
          Flexible(
            child: Text(
              showMinus! ? "-${formattedAmount()}" : formattedAmount(),
              style: baseTextStyle.copyWith(
                  // fontFamily: AppTheme.dirhamFontFamily,
                  height: 0
              ),
            ),
          ),
        ],
      ),
    );
  }

  String formattedAmount() {
    return amount.formatAmount(applyDashSeperate: applyDashSeperate!);
  }
}
