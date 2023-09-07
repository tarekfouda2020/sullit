part of 'add_classified_product_w_imports.dart';

class BuildVideosView extends StatelessWidget {
  const BuildVideosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Videos',
            style: AppTextStyle.s16_w700(
              color: context.colors.black,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: CustomDecoration(),
          child: Column(
            children: [
              GenericTextField(
                margin:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: 'Video From',
              ),
              GenericTextField(
                margin:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.validateEmpty(),
                label: 'Video URL',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
