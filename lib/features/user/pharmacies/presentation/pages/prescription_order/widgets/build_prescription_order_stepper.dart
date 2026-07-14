import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/lang_code_helper.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/prescription_order_step_model.dart';

class BuildPrescriptionOrderStepper extends StatelessWidget {
  final List<PrescriptionOrderStepModel> steps;
  final int current;
  final EdgeInsetsGeometry? padding;

  const BuildPrescriptionOrderStepper({
    super.key,
    required this.steps,
    required this.current,
    this.padding,
  });

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
            children: List.generate(steps.length * 2 - 1, (i) {
              if (i.isEven) {
                int index = i ~/ 2;
                var containerColor = current > index
                    ? context.colors.primary
                    : context.colors.gray4;
                return Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: containerColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.transparent, width: 3),
                  ),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    steps[index].icon,
                    width: 20,
                    height: 20,
                    colorFilter: ColorFilter.mode(
                      iconColor(context, index),
                      BlendMode.srcIn,
                    ),
                  ),
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
            children: List.generate(steps.length, (index) {
              var textColor = current > index
                  ? context.colors.primary
                  : context.colors.textColor;
              return Flexible(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                      start: index == 1 ? paddingFromStart(lang) : 13.r,
                      end: index == steps.length - 1 ? 5.r : 0),
                  child: Text(
                    steps[index].title,
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

  double paddingFromStart(String lang) {
    return lang == LangCodeHelper.langAR ? 5.r : 23.r;
  }

  Color iconColor(BuildContext context, int index) =>
      current > index ? context.colors.white : context.colors.black;
}
