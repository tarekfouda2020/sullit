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
          showIcon: false,
          text: "Attached prescription must be match attached identity",
        ),
      ],
    );
  }
}

class _WarningBullet extends StatelessWidget {
  final String text;
 final bool showIcon;
  const _WarningBullet({required this.text,  this.showIcon = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Opacity(
          opacity: showIcon
              ?1
              :0,
          child: Icon(
            Icons.error,
            color: context.colors.redAccent,
            size: Dimens.dp16,
          ),
        ),
        Gaps.hGap8,
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                    color: context.colors.primary,
                    shape: BoxShape.circle
                ),
                width: 4,
                height: 4,
              ),
              Gaps.hGap7,
              Expanded(
                child: Text(
                  text,
                  style: AppTextStyle.s13_w500(color: context.colors.redAccent)
                      .copyWith(height: 1.3),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
