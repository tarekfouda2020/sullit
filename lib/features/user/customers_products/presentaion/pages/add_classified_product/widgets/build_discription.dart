part of 'add_classified_product_w_imports.dart';

class BuildDiscription extends StatelessWidget {
  const BuildDiscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Description',
            style: AppTextStyle.s14_w800(
              color: context.colors.black,
            ),
          ),
        ),
        Container(
          decoration: CustomDecoration(),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: GenericTextField(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            fieldTypes: FieldTypes.rich,
            type: TextInputType.text,
            action: TextInputAction.next,
            max: 10,
            validate: (value) => value!.validateEmpty(),
            label: 'Description',
          ),
        ),
      ],
    );
  }
}
