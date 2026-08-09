part of '../instore_checkout_imports.dart';

class InstoreGiftCardCodeWidget extends StatelessWidget {
  final InstoreCheckoutController controller;

  const InstoreGiftCardCodeWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.giftCardFormKey,
      child: GenericTextField(
        hint: tr('enterGiftCardCode'),
        controller: controller.giftCardCode,
        fieldTypes: FieldTypes.normal,
        type: TextInputType.text,
        action: TextInputAction.done,
        margin: const EdgeInsets.only(top: 5),
        fillColor: context.colors.white,
        validate: (value) => value?.validateEmpty(),
        suffixIcon: InstoreApplyButtonWidget(
          onPressApply: () => controller.applyGiftCard(context),
        ),
      ),
    );
  }
}
