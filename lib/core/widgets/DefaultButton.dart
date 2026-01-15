import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

import '../constants/dimens.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  final Color? textColor;
  final Color? color;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin;
  final double? width;
  final double? fontSize;
  final double? height;
  final double? elevation;
  final bool? disabled;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Widget? customLabel;

  const DefaultButton({
    super.key,
    required this.title,
    this.onTap,
    this.color,
    this.disabled,
    this.textColor,
    this.borderRadius,
    this.margin,
    this.borderColor,
    this.fontFamily,
    this.fontSize,
    this.width,
    this.height,
    this.fontWeight,
    this.elevation,
    this.customLabel,
  });

  @override
  Widget build(BuildContext context) {
    Color border = color ?? context.colors.primary;
    return IgnorePointer(
      ignoring: disabled ?? false,
      child: Container(
        width: width ?? MediaQuery.sizeOf(context).width,
        height: height ?? 45,
        margin:
            margin ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ElevatedButton(
          onPressed: onTap ?? (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: color?? context.colors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(30),
              side: BorderSide(color: borderColor ?? border, width: 1),
            ),
            elevation: elevation ?? 0,
          ),
          child: customLabel ??
              Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyle.s18_w700(
                  color: textColor ?? Colors.white,
                ).copyWith(
                  fontSize: fontSize ?? 18,
                  fontFamily: fontFamily,
                  fontWeight: fontWeight ?? FontWeight.w700,
                ),
              ),
        ),
      ),
    );
  }
}
