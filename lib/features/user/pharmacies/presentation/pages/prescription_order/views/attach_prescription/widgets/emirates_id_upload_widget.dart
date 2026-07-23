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
            padding:  const EdgeInsets.only(right: 10,left: 10,top: 10),
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
                : const PrescriptionPlaceholderWidget(placeholder:  "Attach Emirates ID\nin PNG / JPG or pdf")
          ),
        );
      },
    );
  }
}
