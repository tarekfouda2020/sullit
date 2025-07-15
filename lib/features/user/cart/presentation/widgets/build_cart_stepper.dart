import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class BuildCartStepper extends StatelessWidget {
  final int current;
  final EdgeInsetsGeometry? padding;
  const BuildCartStepper({super.key, required this.current, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      color: context.colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: List.generate(stepIcons.length * 2 - 1, (i) {
              if (i.isEven) {
                int index = i ~/ 2;
                var containerColor = current > index ? context.colors.primary : context.colors.gray4;
                var iconColor = current > index ? context.colors.white : context.colors.black;
                return Row(
                  children: [
                    Container(
                      padding: Dimens.paddingAll10PX,
                      decoration: BoxDecoration(
                        color: containerColor,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        stepIcons[index],
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                      ),
                    ),
                  ],
                );
              } else {
                int index = (i - 1) ~/ 2;
                var lineColor = current > index ? context.colors.primary : context.colors.gray4;
                return Expanded(
                  child: Container(
                    height: 2.h,
                    color: lineColor,
                  ),
                );
              }
            }),
          ),
          Gaps.vGap8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(stepIcons.length, (index) {
              var textColor = current > index ? context.colors.primary : context.colors.textColor;
              return Flexible(
                child: Padding(
                  padding:  EdgeInsetsDirectional.only(start: index== 1 ? 30 : 10),
                  child: Text(
                    getTitle(index),
                    style: AppTextStyle.s12_w700(color: textColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return "Cart";
      case 1:
        return "Receiving Method";
      case 2:
        return "Payment Checkout";
      case 3:
        return "Success";
      default:
        return "";
    }
  }

  List<String> get stepIcons => [
    Res.shopCart,
    Res.receivingMethod,
    Res.payCheckout,
    Res.successIcon,
  ];
}

