import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class BuildSummaryTabs extends StatelessWidget {
  const BuildSummaryTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingVertical10PX,
      child: TabBar(
        labelPadding: Dimens.paddingVertical10PX,
        indicatorColor: context.colors.primary,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          Text(
            tr("following"),
            style: AppTextStyle.s15_w600(
              color: context.colors.black,
            ),
          ),
          Text(
            tr("explore"),
            style: AppTextStyle.s15_w600(
              color: context.colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
