import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/extensions/file_extension.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/core/widgets/prescription_placeholder_widget.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/saved_prescription_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/res.dart';

class CustomSharedPrescriptionFileCardWidget extends StatelessWidget {
  final GenericBloc<File> prescriptionFileCubit;
  final GenericBloc<SavedPrescriptionModel?> selectedSavedPrescriptionCubit;
  final VoidCallback onPickFile;
  final VoidCallback onRemoveFile;
  final VoidCallback onRemoveSavedPrescription;
  final String placeholder;

  const CustomSharedPrescriptionFileCardWidget({
    super.key,
    required this.prescriptionFileCubit,
    required this.selectedSavedPrescriptionCubit,
    required this.onPickFile,
    required this.onRemoveFile,
    required this.onRemoveSavedPrescription,
    this.placeholder = 'Attach Prescription Document\nin PNG / JPG or pdf',
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<File>, GenericState<File>>(
      bloc: prescriptionFileCubit,
      builder: (context, fileState) {
        return BlocBuilder<GenericBloc<SavedPrescriptionModel?>,
            GenericState<SavedPrescriptionModel?>>(
          bloc: selectedSavedPrescriptionCubit,
          builder: (context, savedState) {
            final file = fileState.data;
            final hasFile = file.path.isNotEmpty;
            final savedPrescription = savedState.data;
            final hasSavedPrescription = savedPrescription != null;
            return GestureDetector(
              onTap: hasFile || hasSavedPrescription ? null : onPickFile,
              child: Container(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                alignment: Alignment.center,
                decoration: CustomDecoration(
                  thisColor: context.colors.white,
                  myBoxShadow: const [],
                  boxBorder: Border.all(color: context.colors.borderColor),
                ),
                child: hasFile
                    ? _buildPickedFile(file)
                    : hasSavedPrescription
                        ? _buildPickedSavedFile(savedPrescription)
                        : PrescriptionPlaceholderWidget(placeholder: placeholder),
              ),
            );
          },
        );
      },
    );
  }

  _PickedFileRow _buildPickedSavedFile(
      SavedPrescriptionModel savedPrescription) {
    return _PickedFileRow(
      fileName: savedPrescription.fileName,
      lastUse: savedPrescription.lastUsedAt,
      onRemove: onRemoveSavedPrescription,
      icon: savedPrescription.isImage
          ? CachedImage(
              url: savedPrescription.url,
              width: Dimens.dp50,
              height: Dimens.dp50,
              fit: BoxFit.cover,
              borderRadius: Dimens.borderRadius10PX,
            )
          : _pdfIcon(),
    );
  }

  _PickedFileRow _buildPickedFile(File file) {
    return _PickedFileRow(
      fileName: file.path.split('/').last,
      lastUse: 'New attachment',
      onRemove: onRemoveFile,
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
          : _pdfIcon(),
    );
  }

  Widget _pdfIcon() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Transform.scale(
        scale: 2,
        child: SvgPicture.asset(
          Res.pdfIcon,
          width: Dimens.dp50,
          height: Dimens.dp50,
        ),
      ),
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
              Row(
                children: [
                  Expanded(
                    child: Text(
                      fileName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.s14_w600(color: context.colors.black),
                    ),
                  ),
                  Gaps.hGap5,
                  GestureDetector(
                    onTap: onRemove,
                    child: Icon(
                      Icons.close,
                      color: context.colors.redAccent,
                    ),
                  )
                ],
              ),
              Gaps.vGap4,
              Text(
                'Last Use : $lastUse',
                style: AppTextStyle.s12_w400(color: context.colors.textColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
