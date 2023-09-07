part of 'add_classified_product_w_imports.dart';


class BuildPrice extends StatelessWidget {
  const BuildPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Price',
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
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value!.validateEmpty(),
            label: 'Unit price',
          ),
        ),
      ],
    );
  }
}
