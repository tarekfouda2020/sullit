import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import '../constants/dimens.dart';
import '../constants/gaps.dart';
import '../theme/text/app_text_style.dart';

class ReviewStatusWidget extends StatelessWidget {
  final String text;
  final Color backGroundColor;
  final Color textColor;
  final Widget child;

  const ReviewStatusWidget({super.key, required this.text, required this.backGroundColor, required this.child, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: Dimens.borderRadius30PX,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          child,
          Gaps.hGap5,
          Text(
            text,
            style: AppTextStyle.s16_w600(color: textColor),
          ),
        ],
      ),
    );
  }
}
