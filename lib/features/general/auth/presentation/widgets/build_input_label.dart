import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class BuildInputLabel extends StatelessWidget {
  final String label;

  const BuildInputLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: AppTextStyle.s14_w400(color: context.colors.textColor),
    );
  }
}
