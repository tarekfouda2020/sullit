part of 'add_classified_product_w_imports.dart';


class BuildPrice extends StatelessWidget {
  final AddClassifiedProductsController controller ;
  const BuildPrice({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            tr('price'),
            style: AppTextStyle.s16_w700(
              color: context.colors.black,
            ),
          ),
        ),
        Container(
          decoration: CustomDecoration(),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: GenericTextField(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.number,
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
