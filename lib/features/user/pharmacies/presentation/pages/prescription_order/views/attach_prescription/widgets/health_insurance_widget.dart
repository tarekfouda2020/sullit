part of 'widgets_imports.dart';

class HealthInsuranceWidget extends StatelessWidget {
  final AttachPrescriptionController controller;

  const HealthInsuranceWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      decoration: CustomDecoration(
        thisColor: context.colors.white,
        myBoxShadow: const [],
        boxBorder: Border.all(color: context.colors.borderColor),
      ),
      child: Row(
        children: [
          CustomCheckBoxWidget(changeValueCubit: controller.healthInsuranceCubit),
          Gaps.hGap8,
          Text(
            "I' have a health insurance",
            style: AppTextStyle.s14_w500(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
