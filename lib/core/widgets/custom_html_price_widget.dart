import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/themes/app_theme.dart';

import '../constants/dimens.dart';

class CustomHtmlPriceWidget extends StatelessWidget {
  final String price;
  final Color? currencyColor;
  final Color? textColor;
  final double? fontSize;
  final double? currencyFontSize;
  final FontWeight? currencyFontWeight;
  final FontWeight? fontWeight;
  final TextStyle? currencyCopyWithStyle;
  final Style? textCopyWithStyle;

  const CustomHtmlPriceWidget({
    super.key,
    required this.price,
     this.currencyColor,
    this.textColor,
    this.fontSize,
    this.currencyFontSize,
    this.currencyFontWeight,
    this.fontWeight,
    this.currencyCopyWithStyle,
    this.textCopyWithStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Html(
        data: price,
        style: {
          "body": Style(
            color: textColor ?? context.colors.primary,
            margin: Margins.zero,
            maxLines: 1,
            fontSize: FontSize(
              fontSize ?? Dimens.font_sp16,
            ),
            fontWeight: fontWeight ?? FontWeight.w400,
          ).copyWithTextStyle(textCopyWithStyle),
        },
        extensions: [
          TagExtension(
            tagsToExtend: {"span"},
            builder: (extensionContext) {
              /// Check if this span has the class we want
              if (extensionContext.attributes["class"] == "sicon-aed") {
                return  Text(
                  "\u{E900} ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: AppTheme.sIconFontFamily,
                    fontSize: currencyFontSize ?? fontSize ?? Dimens.font_sp16,
                    color: currencyColor ?? textColor ?? context.colors.primary,
                    fontWeight:  currencyFontWeight ?? fontWeight ?? FontWeight.w400,
                  ).copyWithTextStyle(currencyCopyWithStyle),
                );
              } else {
                return  Text(price,
                style: TextStyle(
                  color: textColor ?? context.colors.primary,
                  fontSize: fontSize?? Dimens.font_sp16,
                  fontWeight: fontWeight ?? FontWeight.w400,
                )..copyWith,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}







extension TextStyleX on TextStyle {
  TextStyle copyWithTextStyle(TextStyle? other) {
    if (other == null) return this;

    return copyWith(
      color: other.color ?? color,
      backgroundColor: other.backgroundColor ?? backgroundColor,
      fontSize: other.fontSize ?? fontSize,
      fontWeight: other.fontWeight ?? fontWeight,
      fontStyle: other.fontStyle ?? fontStyle,
      letterSpacing: other.letterSpacing ?? letterSpacing,
      wordSpacing: other.wordSpacing ?? wordSpacing,
      textBaseline: other.textBaseline ?? textBaseline,
      height: other.height ?? height,
      leadingDistribution: other.leadingDistribution ?? leadingDistribution,
      locale: other.locale ?? locale,
      foreground: other.foreground ?? foreground,
      background: other.background ?? background,
      shadows: other.shadows ?? shadows,
      fontFeatures: other.fontFeatures ?? fontFeatures,
      decoration: other.decoration ?? decoration,
      decorationColor: other.decorationColor ?? decorationColor,
      decorationStyle: other.decorationStyle ?? decorationStyle,
      decorationThickness: other.decorationThickness ?? decorationThickness,
      overflow: other.overflow ?? overflow,
    );
  }
}

extension HtmlStyleX on Style {
  Style copyWithTextStyle(Style? other) {
    if (other == null) return this;

    return Style(
      color: other.color ?? color,
      backgroundColor: other.backgroundColor ?? backgroundColor,
      fontSize: other.fontSize ?? fontSize,
      fontWeight: other.fontWeight ?? fontWeight,
      fontStyle: other.fontStyle ?? fontStyle,
      textDecoration: other.textDecoration ?? textDecoration,
      textDecorationColor: other.textDecorationColor ?? textDecorationColor,
      textDecorationStyle: other.textDecorationStyle ?? textDecorationStyle,
      lineHeight: other.lineHeight ?? lineHeight,
      letterSpacing: other.letterSpacing ?? letterSpacing,
      wordSpacing: other.wordSpacing ?? wordSpacing,
      whiteSpace: other.whiteSpace ?? whiteSpace,
      textAlign: other.textAlign ?? textAlign,
      direction: other.direction ?? direction,
      padding: other.padding ?? padding,
      margin: other.margin ?? margin,
      display: other.display ?? display,
      alignment: other.alignment ?? alignment,
      border: other.border ?? border,
      fontFamily: other.fontFamily ?? fontFamily,
    );
  }
}



