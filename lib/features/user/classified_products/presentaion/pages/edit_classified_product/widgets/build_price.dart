part of 'edit_classified_product_w_imports.dart';

class BuildEditPrice extends StatelessWidget {
  final EditClassifiedProductController controller;

  const BuildEditPrice({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Dimens.paddingT20B10,
          child: Text(
            tr('price'),
            style: AppTextStyle.s16_w700(color: context.colors.black),
          ),
        ),
        Container(
          decoration: CustomDecoration(),
          padding: Dimens.paddingAll10PX,
          child: GenericTextField(
            margin: Dimens.paddingVertical10PX,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: controller.unitPrice,
            validate: (value) => value!.validateEmpty(),
            label: tr('unitPrice'),
          ),
        ),
      ],
    );
  }
}
