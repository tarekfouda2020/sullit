part of 'cart_payment_widgets_imports.dart';

class GiftCardCodeWidget extends StatelessWidget {
  final CartPaymentController controller;
  const GiftCardCodeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      hint: tr("enterGiftCardCode"),
      controller: controller.giftCardCode ,
      fieldTypes: FieldTypes.normal,
      type: TextInputType.number,
      action: TextInputAction.done,
      margin: const EdgeInsets.only(top: 5),
      fillColor: context.colors.white,
      validate: (value) => value?.noValidate(),
      suffixIcon: ApplyButtonWidget(onPressApply: () { }),
    );
  }

}
