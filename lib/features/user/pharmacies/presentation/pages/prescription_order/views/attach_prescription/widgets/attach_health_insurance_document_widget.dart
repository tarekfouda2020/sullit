part of 'widgets_imports.dart';

class AttachHealthInsuranceDocumentWidget extends StatelessWidget {
  final AttachPrescriptionController controller;

  const AttachHealthInsuranceDocumentWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Attach Health Insurance Document",
          style: AppTextStyle.s16_w600(color: context.colors.black),
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
                padding: hasFile
                    ? const EdgeInsets.symmetric(
                        vertical: Dimens.dp10,
                        horizontal: Dimens.dp10,
                      )
                    : const EdgeInsets.symmetric(
                        vertical: Dimens.dp40,
                        horizontal: Dimens.dp20,
                      ),
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: Dimens.borderRadius10PX,
                  border: Border.all(color: context.colors.borderColor),
                ),
                child: hasFile
                    ? (file.isImage
                        ? PickedImagePreviewWidget(file: file)
                        : PickedPdfPreviewWidget(file: file))
                    : Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.add,
                            size: Dimens.dp32,
                            color: context.colors.textColor,
                          ),
                          Gaps.vGap12,
                          Text(
                            "Attach Health Insurance Document in PNG / JPG or pdf",
                            textAlign: TextAlign.center,
                            style: AppTextStyle.s14_w400(
                              color: context.colors.textColor,
                            ).copyWith(height: 1.3),
                          ),
                        ],
                      ),
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
