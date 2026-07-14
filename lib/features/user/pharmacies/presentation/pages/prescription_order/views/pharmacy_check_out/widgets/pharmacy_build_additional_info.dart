part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyBuildAdditionalInfo extends StatelessWidget {
  final PharmacyCheckOutController controller;

  const PharmacyBuildAdditionalInfo({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.additionalFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: Dimens.paddingVertical10PX,
            child: Text(
              tr("anyAdditionalInfo"),
              style: AppTextStyle.s16_w700(color: context.colors.primary),
            ),
          ),
          GenericTextField(
            hint: tr("enterText"),
            fieldTypes: FieldTypes.rich,
            action: TextInputAction.newline,
            type: TextInputType.multiline,
            controller: controller.additionalInfo,
            max: 4,
            validate: (value) => value!.validateEmpty(),
            margin: Dimens.paddingVertical5PX,
          ),
        ],
      ),
    );
  }
}
