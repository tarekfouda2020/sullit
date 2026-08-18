part of 'widgets_imports.dart';

class AttachHealthInsuranceDocumentWidget extends StatelessWidget {
  final AttachPrescriptionController controller;

  const AttachHealthInsuranceDocumentWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 4,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Attach Health Insurance Document",
                      style: AppTextStyle.s16_w600(color: context.colors.black),
                    ),
                    TextSpan(
                      text: " (optional)",
                      style: AppTextStyle.s14_w400(color: context.colors.textColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Gaps.vGap15,
        BlocBuilder<GenericBloc<File>, GenericState<File>>(
          bloc: controller.insuranceFileBloc,
          builder: (context, state) {
            final file = state.data;
            final hasFile = file.path.isNotEmpty;
            return GestureDetector(
              onTap: controller.onPickInsuranceFile,
              child: Container(
                alignment: Alignment.center,
                  padding:  const EdgeInsets.only(right: 10,left: 10,top: 10),
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: Dimens.borderRadius10PX,
                  border: Border.all(color: context.colors.borderColor),
                ),
                child: hasFile
                    ? (file.isImage
                        ? PickedImagePreviewWidget(file: file)
                        : PickedPdfPreviewWidget(file: file))
                    : const PrescriptionPlaceholderWidget(placeholder:   "Attach Health Insurance Document in PNG / JPG or pdf")
              ),
            );
          },
        ),
        Gaps.vGap15,
        Row(
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
                "Note that pharmacy will review your health insurance document and back to you with required invoice",
                style: AppTextStyle.s13_w500(color: context.colors.redAccent)
                    .copyWith(height: 1.3),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
