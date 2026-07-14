part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyPickerNotesWidget extends StatelessWidget {
  final PharmacyCheckOutController controller;
  const PharmacyPickerNotesWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Row(
          children: [
            const PharmacyCartPaymentSectionTitleWidget(title: "picker instructions"),
            Text(
              tr("optional"),
              style: AppTextStyle.s12_w400(color: context.colors.black),
            )
          ],
        ),
        Container(
          padding: const EdgeInsetsDirectional.only(
              start: 18, top: 19, end: 24, bottom: 15),
          decoration: CustomDecoration(
              myBoxShadow: const [],
              boxBorder: Border.all(color: context.colors.borderColor)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Notes for picker (optional)",
                style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
              Gaps.vGap9,
              GenericTextField(
                controller: controller.pickerNotesCtr,
                fieldTypes: FieldTypes.rich,
                margin: EdgeInsets.zero,
                type: TextInputType.multiline,
                action: TextInputAction.done,
                validate: (value) => value?.noValidate(),
                max: 4,
                fillColor: context.colors.customBackground,
                radius: Dimens.borderRadius20PX,
                hint: tr("write_notes_here"),
                hintStyle:
                    AppTextStyle.s14_w400(color: context.colors.textColor),
              )
            ],
          ),
        )
      ],
    );
  }
}
