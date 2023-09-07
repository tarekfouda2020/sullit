part of 'add_classified_product_w_imports.dart';

class BuildMetaTags extends StatelessWidget {
  final AddClassifiedProductsController controller ;
  const BuildMetaTags({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Meta Tags',
            style: AppTextStyle.s16_w700(
              color: context.colors.black,
            ),
          ),
        ),
        Container(
          decoration: CustomDecoration(),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GenericTextField(
                margin:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: 'Meta Title',
              ),
              GenericTextField(
                margin:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.rich,
                max: 5,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: 'Description',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Meta Image',
                  style: AppTextStyle.s14_w800(
                    color: context.colors.black,
                  ),
                ),
              ),
              BuildCustomGetImage(controller: controller, type: ImageType.meta)
            ],
          ),
        ),
      ],
    );
  }
}
