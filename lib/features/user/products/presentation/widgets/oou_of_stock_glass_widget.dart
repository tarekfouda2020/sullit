import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

import '../../../../../core/localization/localization_methods.dart';

class OutOfStockGlassWidget extends StatelessWidget {
  const OutOfStockGlassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
          decoration: BoxDecoration(
            color: context.colors.black.withAlpha(26),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            tr("outOfStock"),
            style: const AppTextStyle.s12_w600(color: Color(0xff454545)),
          ),
        ),
      ),
    );
  }
}
