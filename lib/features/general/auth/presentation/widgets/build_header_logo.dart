import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class BuildHeaderLogo extends StatelessWidget {
  final double? marginTop;
  final double? marginBottom;
  const BuildHeaderLogo({Key? key, this.marginTop, this.marginBottom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top:marginTop ?? 20+kToolbarHeight,bottom:marginBottom ?? 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Res.logoPng, width: 120.r, height: 56.r),
              Image.asset(Res.logoIcon,height: 56.r),
            ],
          ),
          Text("its worth it, thats it",
          style: AppTextStyle.s16_w700(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
