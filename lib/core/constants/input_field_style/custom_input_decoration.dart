import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class CustomInputDecoration extends InputDecoration {
  final String lang;
  final String? labelTxt;
  final String? hint;
  final Widget? prefIcon;
  final Widget? sufIcon;
  final Color? enableColor;
  final Color? focsColor;
  final Color? hintColor;
  final Color? customFillColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final TextStyle? hintTxtStyle;

  const CustomInputDecoration(
      {required this.lang,
        this.hint,
        this.labelTxt,
        this.prefIcon,
        this.sufIcon,
        this.hintColor,
        this.customFillColor,
        this.enableColor,
        this.focsColor,
        this.borderRadius,
        this.hintTxtStyle,
        this.padding})
      : super();

  @override
  InputBorder get enabledBorder => OutlineInputBorder(
    borderSide: BorderSide(
        color: enableColor ?? AppColors.noContextInstance.greyWhite,
        width: .7),
    borderRadius: borderRadius ?? BorderRadius.circular(10),
  );

  @override
  InputBorder get focusedBorder => OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      borderSide: BorderSide(
          color: focusColor ?? AppColors.noContextInstance.greyWhite,
          width: 1));

  @override
  InputBorder get errorBorder => OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red, width: .5),
      borderRadius: borderRadius ?? BorderRadius.circular(10));

  @override
  InputBorder get focusedErrorBorder => OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.red, width: 2));

  @override
  TextStyle get errorStyle =>
      const AppTextStyle.s12_w400(color: AppColors.snackBarRedError);

  @override
  String? get hintText => hint;

  @override
  int? get errorMaxLines => 2;

  @override
  Widget? get label => labelTxt == null
      ? super.label
      : Text(
    labelTxt ?? "",
    style: labelStyle,
  );

  @override
  TextStyle get labelStyle =>
      AppTextStyle.s12_w400(color: AppColors.noContextInstance.blackOpacity);

  @override
  TextStyle? get hintStyle => hintTxtStyle ??
      AppTextStyle.s12_w400(color: AppColors.noContextInstance.blackOpacity);

  @override
  EdgeInsetsGeometry get contentPadding =>
      padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 10);

  @override
  bool get filled => true;

  @override
  Color get fillColor => customFillColor ?? Colors.transparent;

  @override
  bool get alignLabelWithHint => true;

  @override
  Widget? get suffixIcon => sufIcon;

  @override
  Widget? get prefixIcon => prefIcon;

  @override
  Color? get focusColor => focsColor;
}
