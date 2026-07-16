import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/prescription_order_step_model.dart';

class BuildPrescriptionOrderStepper extends StatelessWidget {
  final List<PrescriptionOrderStepModel> steps;
  final int current;
  final EdgeInsetsGeometry? padding;

  static const double _circleSize = 50;

  const BuildPrescriptionOrderStepper({
    super.key,
    required this.steps,
    required this.current,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      color: context.colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(steps.length * 2 - 1, (i) {
          if (i.isEven) {
            int index = i ~/ 2;
            return _buildStep(context, index);
          } else {
            int index = (i - 1) ~/ 2;
            return _buildLine(context, index);
          }
        }),
      ),
    );
  }

  Widget _buildStep(BuildContext context, int index) {
    var containerColor =
        current > index ? context.colors.primary : context.colors.gray4;
    var textColor =
        current > index ? context.colors.primary : context.colors.textColor;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: _circleSize,
          height: _circleSize,
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
        ),
        Gaps.vGap8,
        SizedBox(
          width: 50,
          child: Text(
            steps[index].title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.s10_w700(color: textColor),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildLine(BuildContext context, int index) {
    var lineColor =
        current > index ? context.colors.primary : context.colors.gray4;
    return Expanded(
      child: SizedBox(
        height: _circleSize,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: 2.h,
            color: lineColor,
          ),
        ),
      ),
    );
  }

  Color iconColor(BuildContext context, int index) =>
      current > index ? context.colors.white : context.colors.black;
}
