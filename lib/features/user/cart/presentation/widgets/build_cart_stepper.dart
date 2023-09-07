import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

class BuildCartStepper extends StatelessWidget {
  final int current;

  const BuildCartStepper({super.key, required this.current});

  @override
  Widget build(BuildContext context) {
    const stepIcons = [
      CupertinoIcons.cart,
      CupertinoIcons.map,
      CupertinoIcons.bus,
      CupertinoIcons.creditcard,
      CupertinoIcons.check_mark_circled,
    ];
    return Container(
      padding: Dimens.paddingAll20PX,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          stepIcons.length,
          (index) {
            var containerColor =
                current > index ? context.colors.primary : context.colors.gray;
            var lineColor =
                current > index ? context.colors.primary : context.colors.gray;
            return Row(
              children: [
                Container(
                  padding: Dimens.paddingAll10PX,
                  decoration: BoxDecoration(
                    color: containerColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    stepIcons[index],
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                Visibility(
                  visible: index != stepIcons.length - 1,
                  child: Container(
                    height: 2.h,
                    width: 30.w,
                    color: lineColor,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
