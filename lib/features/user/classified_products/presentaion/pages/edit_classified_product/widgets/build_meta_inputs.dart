part of 'edit_classified_product_w_imports.dart';


class BuildMetaInputs extends StatelessWidget {
  final EditClassifiedProductController controller ;
  const BuildMetaInputs({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Meta Tags',
            style: AppTextStyle.s16_w700(color: context.colors.black),
          ),
        ),
        Container(
          decoration: CustomDecoration(),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GenericTextField(
                margin: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                controller: controller.metaTitle,
                label: 'Meta Title',
              ),
              GenericTextField(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.rich,
                max: 5,
                controller: controller.metaDescription,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: 'Description',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Meta Image',
                  style: AppTextStyle.s14_w800(color: context.colors.black),
                ),
              ),
              BuildEditMetaImage(controller: controller)
            ],
          ),
        ),
      ],
    );
  }
}
