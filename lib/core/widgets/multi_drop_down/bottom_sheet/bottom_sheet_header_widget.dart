import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class BottomSheetHeaderWidget extends StatelessWidget {
  final String title;
  final void Function()? onClose;
  final bool showCloseIcon;
  const BottomSheetHeaderWidget({super.key, required this.title, this.onClose,  this.showCloseIcon = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Gaps.hGap10,
        Text(
          title,
          style: AppTextStyle.s20_w700(color: context.colors.black),
        ),
        Visibility(
          visible: showCloseIcon,
          child: GestureDetector(
            onTap: onClose ?? () => Navigator.pop(context),
            child: Icon(
              Icons.close,
              color: context.colors.black,
              size: 22,
            ),
          ),
        ),

      ],
    );
  }
}
