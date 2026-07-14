part of 'home_main_widgets_imports.dart';

class AttachPrescriptionSheetWidget extends StatelessWidget {
  final HomeMainController controller;

  const AttachPrescriptionSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20PX,
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BottomSheetHeaderWidget(title: "Attach Prescription"),
          Gaps.vGap20,
          PrescriptionFileCardWidget(controller: controller),
          Gaps.vGap20,
          const _WarningBullet(
            text:
                "Your prescription will be reviewed by the selected pharmacy. You will receive a confirmation once approved.",
          ),
          Gaps.vGap8,
          const _WarningBullet(
            text: "The name on the prescription must match the name on the EID",
          ),
          Gaps.vGap20,
          DefaultButton(
            title: "Choose From Saved Prescriptions",
            onTap: () => controller.onPressChooseFromSavedPrescriptions(context),
            color: context.colors.white,
            borderColor: context.colors.primary,
            textColor: context.colors.primary,
            margin: EdgeInsets.zero,
          ),
          Gaps.vGap10,
          DefaultButton(
            title: "Continue",
            onTap: () => controller.onPressContinuePrescription(context),
            margin: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}

class _WarningBullet extends StatelessWidget {
  final String text;

  const _WarningBullet({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.error,
          color: context.colors.redAccent,
          size: Dimens.dp16,
        ),
        Gaps.hGap8,
        Expanded(
          child: Text(
            text,
            style: AppTextStyle.s13_w500(color: context.colors.redAccent)
                .copyWith(height: 1.3),
          ),
        ),
      ],
    );
  }
}
