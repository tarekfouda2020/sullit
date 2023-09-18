part of 'edit_classified_product_w_imports.dart';
class BuildDescription extends StatelessWidget {
  final EditClassifiedProductController controller ;
  const BuildDescription({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Description',
            style: AppTextStyle.s14_w800(color: context.colors.black),
          ),
        ),
        Container(
          decoration: CustomDecoration(),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: GenericTextField(
            margin:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            fieldTypes: FieldTypes.rich,
            type: TextInputType.text,
            action: TextInputAction.next,
            max: 10,
            controller: controller.productDescription,
            validate: (value) => value!.validateEmpty(),
            label: 'Description',
          ),
        ),
      ],
    );
  }
}
