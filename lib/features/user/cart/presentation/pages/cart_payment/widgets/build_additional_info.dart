part of 'cart_payment_widgets_imports.dart';

class BuildAdditionalInfo extends StatelessWidget {
  final CartPaymentController controller;

  const BuildAdditionalInfo({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.additionalFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: Dimens.dp15),
            child: Text(
              "Any Additional Info ?",
              style: AppTextStyle.s16_w700(color: context.colors.primary),
            ),
          ),
          GenericTextField(
            hint: "Enter Your Text",
            fieldTypes: FieldTypes.rich,
            action: TextInputAction.newline,
            type: TextInputType.multiline,
            controller: controller.additionalInfo,
            max: 4,
            validate: (value) => value!.validateEmpty(),
            // margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
          ),
        ],
      ),
    );
  }
}
