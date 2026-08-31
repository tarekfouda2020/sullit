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
          BottomSheetHeaderWidget(title: tr('attachPrescription')),
          Gaps.vGap20,
          CustomSharedPrescriptionFileCardWidget(
            prescriptionFileCubit: controller.prescriptionFileCubit,
            selectedSavedPrescriptionCubit: controller.selectedSavedPrescriptionCubit,
            onPickFile: controller.onPickPrescriptionFile,
            onRemoveFile: controller.onRemovePrescriptionFile,
            onRemoveSavedPrescription: controller.onRemoveSelectedSavedPrescription,
          ),
          Gaps.vGap20,
          _WarningBullet(
            text: tr('prescriptionReviewNote'),
          ),
          Gaps.vGap20,
          DefaultButton(
            title: tr('chooseFromSavedPrescriptions'),
            onTap: () => controller.onPressChooseFromSavedPrescriptions(context),
            color: context.colors.white,
            borderColor: context.colors.primary,
            textColor: context.colors.primary,
            margin: EdgeInsets.zero,
          ),
          Gaps.vGap10,
          DefaultButton(
            title: tr('continue'),
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
