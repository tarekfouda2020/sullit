part of 'widgets_imports.dart';

class SaveForLaterWidget extends StatelessWidget {
  final AttachPrescriptionController controller;

  const SaveForLaterWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomCheckBoxWidget(changeValueCubit: controller.saveForLaterCubit),
            Gaps.hGap8,
            Text(
              "Save For Later",
              style: AppTextStyle.s14_w500(color: context.colors.black),
            ),
          ],
        ),
        Gaps.vGap10,
        const _WarningBullet(
          text:
              "Note that pharmacy will review your Prescription  document and back to you with confirmation or rejection",
        ),
        Gaps.vGap4,
        const _WarningBullet(
          text: "Attached prescription must be match attached identity",
        ),
      ],
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
