import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class BuildDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  final bool? haveDrawer;
  final bool? haveIcon;
  final IconData? dropIcon;

  const BuildDrawerItem(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onTap,
      this.haveDrawer = true,
      this.haveIcon = false,
      this.dropIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: Dimens.paddingVertical5PX,
            child: Row(
              children: [
                Icon(
                  icon,
                  color: context.colors.blackOpacity,
                  size: 20.sp,
                ),
                Gaps.hGap10,
                Text(
                  title,
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
                const Spacer(),
                Visibility(
                  visible: haveIcon!,
                  child: Icon(
                    dropIcon,
                    color: context.colors.blackOpacity,
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: haveDrawer!,
            child: Gaps.line(context.colors.grey, 20.h),
          )
        ],
      ),
    );
  }
}
