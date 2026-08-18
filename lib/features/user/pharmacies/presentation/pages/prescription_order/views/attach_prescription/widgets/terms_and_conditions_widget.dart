part of 'widgets_imports.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  final AttachPrescriptionController controller;

  const TermsAndConditionsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBoxWidget(changeValueCubit: controller.agreeTermsCubit),
        Gaps.hGap8,
        GestureDetector(
          onTap: () => controller.onPressTermsAndConditions(context),
          child: Text.rich(
            TextSpan(
              text: "Agree ",
              style: AppTextStyle.s14_w400(color: context.colors.black),
              children: [
                TextSpan(
                  text: "Terms & Conditions",
                  style: AppTextStyle.s14_w700(color: context.colors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
