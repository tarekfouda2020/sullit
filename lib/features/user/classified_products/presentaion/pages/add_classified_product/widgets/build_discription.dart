part of 'add_classified_product_w_imports.dart';

class BuildDiscription extends StatelessWidget {
  final AddClassifiedProductsController controller ;
  const BuildDiscription({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            controller: controller.description,
            max: 10,
            validate: (value) => value!.validateEmpty(),
            label: 'Description',
          ),
        ),
      ],
    );
  }
}
