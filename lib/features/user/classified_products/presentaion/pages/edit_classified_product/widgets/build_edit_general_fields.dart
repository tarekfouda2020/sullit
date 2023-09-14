part of 'edit_classified_product_w_imports.dart';


class BuildEditGeneralFields extends StatelessWidget {
  const BuildEditGeneralFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: CustomDecoration(),
      child: Column(
        children: [
          GenericTextField(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value!.validateEmpty(),
            label: 'Product Name',
          ),
          GenericTextField(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value!.validateEmpty(),
            label: 'Product category',
          ),
          GenericTextField(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value!.validateEmpty(),
            label: 'Product brand',
          ),
          GenericTextField(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value!.validateEmpty(),
            label: 'Condition',
          ),
          GenericTextField(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value!.validateEmpty(),
            label: 'Location',
          ),
          GenericTextField(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value!.validateEmpty(),
            label: 'Product Tag',
          ),
          GenericTextField(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value!.validateEmpty(),
            label: 'Product category',
          )
        ],
      ),
    );
  }
}
