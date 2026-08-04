import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class PrescriptionPlaceholderWidget extends StatelessWidget {
  final String placeholder;

  const PrescriptionPlaceholderWidget({
    super.key,
    this.placeholder = 'Attach Prescription Document\nin PNG / JPG or pdf',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.add,
          size: Dimens.dp32,
          color: context.colors.textColor.withAlpha(120),
        ),
        Gaps.vGap12,
        Text(
          placeholder,
          textAlign: TextAlign.center,
          style: AppTextStyle.s14_w400(
            color: context.colors.textColor,
          ).copyWith(height: 1.3),
        ),
        Gaps.vGap12,
      ],
    );
  }
}
