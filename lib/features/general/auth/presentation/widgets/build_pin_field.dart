import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class BuildPinField extends StatelessWidget {
  final Function(String) onComplete;
  final int? count;
  final EdgeInsetsGeometry? margin;

  const BuildPinField({
    Key? key,
    required this.onComplete,
     this.count,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin:margin?? const EdgeInsets.symmetric(vertical: 20),
      child: PinCodeTextField(
        length: count ?? 6,
        appContext: context,
        onChanged: (String value) {},
        backgroundColor: Colors.transparent,
        textStyle: AppTextStyle.s16_w500(color: context.colors.black),
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.circle,
            fieldHeight: 48,
            fieldWidth: 48,
            inactiveColor: context.colors.greyWhite,
            activeColor: context.colors.greyWhite,
            selectedColor: context.colors.primary,
            selectedFillColor: context.colors.white,
            inactiveFillColor: context.colors.white,
            activeFillColor: context.colors.white,
            disabledColor: context.colors.black,
        ),
        cursorColor: context.colors.black,
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: true,
        onCompleted: onComplete,
      ),
    );
  }
}
