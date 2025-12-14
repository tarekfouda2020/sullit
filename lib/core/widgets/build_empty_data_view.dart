import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class BuildEmptyDataView extends StatelessWidget {
  final String? text;
  const BuildEmptyDataView({Key? key,this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => AutoRouter.of(context).pop(),
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              Res.emptyCart,
              width: 170,
              height: 170,
              scale: 3,
            ),
          ),
        ),
        Gaps.vGap5,
        Text(
         text ?? tr("comingSoon"),
          style: AppTextStyle.s16_w700(
            color: context.colors.black,
          ),
        ),
      ],
    );
  }
}
