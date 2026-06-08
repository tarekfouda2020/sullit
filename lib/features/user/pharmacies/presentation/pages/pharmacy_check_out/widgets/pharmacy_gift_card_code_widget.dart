part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyGiftCardCodeWidget extends StatelessWidget {
  final PharmacyCheckOutController controller;
  const PharmacyGiftCardCodeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.giftCardFormKey,
      child: GenericTextField(
        hint: tr("enterGiftCardCode"),
        controller: controller.giftCardCode,
        fieldTypes: FieldTypes.normal,
        type: TextInputType.text,
        action: TextInputAction.done,
        margin: const EdgeInsets.only(top: 5),
        fillColor: context.colors.white,
        validate: (value) => value?.validateEmpty(),
        suffixIcon: PharmacyApplyButtonWidget(
            onPressApply: () => controller.applyGiftCard(context)),
      ),
    );
  }
}
