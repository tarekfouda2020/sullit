part of 'widgets_imports.dart';

class PharmacyAttachPrescriptionWidget extends StatelessWidget {
  final PharmacyAddressController controller;
  final GenericBloc<File> fileCubit;
  const PharmacyAttachPrescriptionWidget({
    super.key,
    required this.controller,
    required this.fileCubit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tr("attachPrescription"),
          style: AppTextStyle.s16_w500(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap15,
        GestureDetector(
          onTap: () => controller.onPickPrescriptionFile(fileCubit, context),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              vertical: Dimens.dp40,
              horizontal: Dimens.dp20,
            ),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius10PX,
              border: Border.all(
                color: context.colors.borderColor,
              ),
            ),
            child: BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
              bloc: fileCubit,
              builder: (context, state) {
                final file = state.data;
                if (file != null && file.path.isNotEmpty) {
                  return _AttachedFilePreview(filePath: file.path);
                }
                return const _UploadPlaceholder();
              },
            ),
          ),
        ),
        Gaps.vGap15,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.error,
              color: context.colors.redAccent,
              size: Dimens.dp20,
            ),
            Gaps.hGap8,
            Expanded(
              child: Text(
                tr("prescriptionReviewNote"),
                style: AppTextStyle.s13_w400(
                  color: context.colors.redAccent,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _UploadPlaceholder extends StatelessWidget {
  const _UploadPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.add,
          size: Dimens.dp32,
          color: context.colors.textColor,
        ),
        Gaps.vGap12,
        Text(
          tr("attachPrescriptionDocumentHint"),
          textAlign: TextAlign.center,
          style: AppTextStyle.s14_w400(
            color: context.colors.textColor,
          ),
        ),
      ],
    );
  }
}

class _AttachedFilePreview extends StatelessWidget {
  final String filePath;

  const _AttachedFilePreview({required this.filePath});

  bool get _isImage {
    final ext = filePath.split(".").last.toLowerCase();
    return ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'].contains(ext);
  }

  @override
  Widget build(BuildContext context) {
    if (_isImage) {
      return ClipRRect(
        borderRadius: Dimens.borderRadius10PX,
        child: Image.file(
          File(filePath),
          height: Dimens.dp150,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      );
    }

    final fileName = filePath.split('/').last;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.insert_drive_file_outlined,
          color: context.colors.primary,
          size: Dimens.dp28,
        ),
        Gaps.hGap8,
        Expanded(
          child: Text(
            fileName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.s14_w500(
              color: context.colors.primary,
            ),
          ),
        ),
        Icon(
          Icons.check_circle,
          color: context.colors.green,
          size: Dimens.dp20,
        ),
      ],
    );
  }
}
