import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/lang_code_helper.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/cart/presentation/manager/helpers/cart_navigate_helper.dart';
import 'package:flutter_tdd/res.dart';

class BuildCartStepper extends StatelessWidget {
  final int current;
  final EdgeInsetsGeometry? padding;
  const BuildCartStepper({super.key, required this.current, this.padding});

  @override
  Widget build(BuildContext context) {
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Container(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      color: context.colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children:
                List.generate(stepsIconWidget(context).length * 2 - 1, (i) {
              if (i.isEven) {
                int index = i ~/ 2;
                var containerColor = current > index
                    ? context.colors.primary
                    : context.colors.gray4;
                return Row(
                  children: [
                    GestureDetector(
                      onTap: () => _onTap(index, context),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: containerColor,
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Colors.transparent, width: 3),
                        ),
                        alignment: Alignment.center, // center the icon
                        child: stepsIconWidget(context)[index],
                      ),
                    ),
                  ],
                );
              } else {
                int index = (i - 1) ~/ 2;
                var lineColor = current > index
                    ? context.colors.primary
                    : context.colors.gray4;
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
            children: List.generate(stepsIconWidget(context).length, (index) {
              var textColor = current > index
                  ? context.colors.primary
                  : context.colors.textColor;
              return Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: index == 1 ? paddingFromStart(lang) : 13.r,
                      end: index == stepsIconWidget(context).length - 1
                          ? 5.r
                          : 0),
                  child: Text(
                    getTitle(index),
                    style: AppTextStyle.s10_w700(color: textColor),
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

  void _onTap(int index, BuildContext context) {
    final helper = getIt<CartNavigateHelper>();
    if (helper.currentStep == CartNavigateHelper.confirmationStepIndex) {
      return;
    }
    final currentIndex = current - 1;
    final targetStep = index;

    if (currentIndex > targetStep) {
      helper.setStep(targetStep, force: true);
    } else {
      helper.navigateToStep(targetStep);
    }
  }

  double paddingFromStart(String lang) {
    return lang == LangCodeHelper.langAR ? 5.r : 23.r;
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return tr("cart");
      case 1:
        return tr("shipping");
      case 2:
        return tr("delivery");
      case 3:
        return tr("paymentCheckout");
      case 4:
        return tr("success");
      default:
        return "";
    }
  }

  List<Widget> stepsIconWidget(BuildContext context) => [
        SvgPicture.asset(
          Res.shopCart,
          width: 20,
          height: 20,
          colorFilter: ColorFilter.mode(iconColor(context, 0), BlendMode.srcIn),
        ),
        Icon(
          CupertinoIcons.map,
          color: iconColor(context, 1),
        ),
        Icon(
          CupertinoIcons.bus,
          color: iconColor(context, 2),
        ),
        SvgPicture.asset(
          Res.payCheckout,
          width: 20,
          height: 20,
          colorFilter: ColorFilter.mode(iconColor(context, 3), BlendMode.srcIn),
        ),
        SvgPicture.asset(
          Res.successIcon,
          width: 20,
          height: 20,
          colorFilter: ColorFilter.mode(iconColor(context, 4), BlendMode.srcIn),
        ),
      ];
  Color iconColor(BuildContext context, int index) =>
      current > index ? context.colors.white : context.colors.black;
}
