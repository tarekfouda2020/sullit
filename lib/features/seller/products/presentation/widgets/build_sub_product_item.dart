import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import '../../../../../core/constants/gaps.dart';
import '../../../../../core/theme/text/app_text_style.dart';

class BuildSubProductItem extends StatelessWidget {
  final String text;
  final Function() onTap;
  const BuildSubProductItem({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10).r,
        child: Row(
          children: [
            Icon(
              Icons.circle_outlined,
              size: 8.sp,
              color: context.colors.black,
            ),
            Gaps.hGap10,
            Text(
              text,
              style: AppTextStyle.s12_w400(color: context.colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
