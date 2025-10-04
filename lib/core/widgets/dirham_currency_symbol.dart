import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/themes/app_theme.dart';

import '../constants/gaps.dart';
import '../theme/colors/app_colors.dart';

/// A widget that displays the UAE Dirham currency symbol (د.إ)
/// using the dirhamicon font family.
///
/// Based on the dirhamicon.com font which provides Unicode characters:
/// - u+e001: Standard Dirham symbol
/// - u+e002: Alternative Dirham symbol
class DirhamCurrencySymbol extends StatelessWidget {

  final bool useAlternativeSymbol;

  final TextStyle? textStyle;
 final double? currencyOffset;
  const DirhamCurrencySymbol({
    Key? key,
    this.useAlternativeSymbol = false,
    this.textStyle,
    this.currencyOffset,
  }) : super(key: key);

  /// Create a small currency symbol
  DirhamCurrencySymbol.small({
    Key? key,
    Color? color,
    FontWeight? fontWeight,
    bool useAlternativeSymbol = false,
    TextStyle? textStyle,
  }) : this(
          key: key,
          useAlternativeSymbol: useAlternativeSymbol,
          textStyle: AppTextStyle.s12_w400(color: color ?? AppColors.noContextInstance.primary),
        );

  /// Create a medium currency symbol
  DirhamCurrencySymbol.medium({
    Key? key,
    Color? color,
    FontWeight? fontWeight,
    bool useAlternativeSymbol = false,
    TextStyle? textStyle,
  }) : this(
          key: key,
          useAlternativeSymbol: useAlternativeSymbol,
          textStyle: AppTextStyle.s15_w400(color: color ?? AppColors.noContextInstance.primary),
        );

  /// Create a large currency symbol
  DirhamCurrencySymbol.large({
    Key? key,
    Color? color,
    FontWeight? fontWeight,
    bool useAlternativeSymbol = false,
    TextStyle? textStyle,
    double? size,
  }) : this(
          key: key,
          useAlternativeSymbol: useAlternativeSymbol,
          textStyle: AppTextStyle.s24_w400(color: color ?? AppColors.noContextInstance.primary),
        );

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset:  Offset(0, currencyOffset ?? 1),
      child: Text(
        useAlternativeSymbol ? '\ue002' : '\ue001',
        style: (textStyle?.copyWith(
              fontFamily: AppTheme.dirhamFontFamily,
          height: 0
            )) ??
            AppTextStyle.s16_w400(color: context.colors.primary).copyWith(
              fontFamily: AppTheme.dirhamFontFamily,
              height: 1,
            ),
      ),
    );
  }
}

/// A widget that displays a price with the Dirham currency symbol


/// Extension to easily add Dirham currency symbol to Text widgets
extension DirhamTextExtension on Text {
  /// Add Dirham currency symbol to the text
  Widget withDirhamSymbol({
    bool useAlternativeSymbol = false,
    double? symbolSize,
    Color? symbolColor,
    FontWeight? symbolWeight,
    TextStyle? symbolStyle,
    double? currencyOffset,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DirhamCurrencySymbol(
          // size: symbolSize ?? style?.fontSize ?? Dimens.font_sp16,
          // color: symbolColor ?? AppColors.noContextInstance.primary,
          // fontWeight: symbolWeight ?? style?.fontWeight ?? FontWeight.w400,
          useAlternativeSymbol: useAlternativeSymbol,
          textStyle: symbolStyle ?? style ,
          currencyOffset: currencyOffset,
        ),
        Gaps.hGap2,
        this,
      ],
    );
  }
}
