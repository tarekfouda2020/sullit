part of 'widgets_imports.dart';

class EmiratesIdUploadWidget extends StatelessWidget {
  final AttachPrescriptionController controller;

  const EmiratesIdUploadWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<File>, GenericState<File>>(
      bloc: controller.emiratesIdCubit,
      builder: (context, state) {
        final file = state.data;
        final hasFile = file.path.isNotEmpty;
        return GestureDetector(
          onTap: hasFile ? null : controller.onPickEmiratesId,
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
                    ? PickedImagePreviewWidget(
                        file: file,
                        onRemove: controller.onRemoveEmiratesId,
                      )
                    : PickedPdfPreviewWidget(
                        file: file,
                        onRemove: controller.onRemoveEmiratesId,
                      ))
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
                        "Attach Emirates ID\nin PNG / JPG or pdf",
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
    );
  }
}
