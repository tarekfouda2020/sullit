part of 'home_main_widgets_imports.dart';

class PrescriptionFileCardWidget extends StatelessWidget {
  final HomeMainController controller;

  const PrescriptionFileCardWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<File>, GenericState<File>>(
      bloc: controller.prescriptionFileCubit,
      builder: (context, fileState) {
        return BlocBuilder<GenericBloc<SavedPrescriptionModel?>,
            GenericState<SavedPrescriptionModel?>>(
          bloc: controller.selectedSavedPrescriptionCubit,
          builder: (context, savedState) {
            final file = fileState.data;
            final hasFile = file.path.isNotEmpty;
            final savedPrescription = savedState.data;
            final hasSavedPrescription = savedPrescription != null;
            return GestureDetector(
              onTap: hasFile || hasSavedPrescription
                  ? null
                  : controller.onPickPrescriptionFile,
              child: Container(
                padding: Dimens.paddingAll15PX,
                alignment: Alignment.center,
                decoration: CustomDecoration(
                  thisColor: context.colors.white,
                  myBoxShadow: const [],
                  boxBorder: Border.all(color: context.colors.borderColor),
                ),
                child: hasFile
                    ? _PickedFileRow(
                        fileName: file.path.split('/').last,
                        lastUse: "New attachment",
                        onRemove: controller.onRemovePrescriptionFile,
                        icon: file.isImage
                            ? ClipRRect(
                                borderRadius: Dimens.borderRadius10PX,
                                child: Image.file(
                                  file,
                                  width: Dimens.dp50,
                                  height: Dimens.dp50,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : SvgPicture.asset(
                                Res.pdfIcon,
                                width: Dimens.dp50,
                                height: Dimens.dp50,
                              ),
                      )
                    : hasSavedPrescription
                        ? _PickedFileRow(
                            fileName: savedPrescription.fileName,
                            lastUse: savedPrescription.lastUsedAt,
                            onRemove: controller.onRemoveSelectedSavedPrescription,
                            icon: savedPrescription.isImage
                                ? CachedImage(
                                    url: savedPrescription.url,
                                    width: Dimens.dp50,
                                    height: Dimens.dp50,
                                    fit: BoxFit.cover,
                                    borderRadius: Dimens.borderRadius10PX,
                                  )
                                : SvgPicture.asset(
                                    Res.pdfIcon,
                                    width: Dimens.dp50,
                                    height: Dimens.dp50,
                                  ),
                          )
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
                                "Attach Prescription Document\nin PNG / JPG or pdf",
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
      },
    );
  }
}

class _PickedFileRow extends StatelessWidget {
  final Widget icon;
  final String fileName;
  final String lastUse;
  final VoidCallback onRemove;

  const _PickedFileRow({
    required this.icon,
    required this.fileName,
    required this.lastUse,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        Gaps.hGap10,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fileName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
              Gaps.vGap4,
              Text(
                "Last Use : $lastUse",
                style: AppTextStyle.s12_w400(color: context.colors.textColor),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: onRemove,
          icon: Icon(
            Icons.close,
            color: context.colors.redAccent,
          ),
        ),
      ],
    );
  }
}
