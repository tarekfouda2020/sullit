import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class BuildHeaderTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  const BuildHeaderTitle({
    Key? key,
    required this.title,
    this.subTitle = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyle.s22_w800(color: context.colors.black),
        ),
        Visibility(
          visible: subTitle.isNotEmpty,
          replacement: Gaps.empty,
          child: Padding(
            padding: Dimens.headerTitlePadding,
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: AppTextStyle.s14_w400(color: context.colors.textColor).copyWith(
                height: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
