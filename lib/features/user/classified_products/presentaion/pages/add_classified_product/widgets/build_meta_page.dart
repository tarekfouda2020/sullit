part of 'add_classified_product_w_imports.dart';

class BuildMetaTags extends StatelessWidget {
  final AddClassifiedProductsController controller;

  const BuildMetaTags({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Dimens.paddingT20B10,
          child: Text(
            tr('metaTags'),
            style: AppTextStyle.s15_w700(
              color: context.colors.black,
            ),
          ),
        ),
        Container(
          decoration: CustomDecoration(),
          padding: Dimens.paddingAll10PX,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GenericTextField(
                margin: Dimens.paddingVertical10PX,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                controller: controller.metaTitleController,
                validate: (value) => value!.noValidate(),
                label: tr('metaTitle'),
              ),
              GenericTextField(
                margin: Dimens.paddingVertical10PX,
                controller: controller.metaDescController,
                fieldTypes: FieldTypes.rich,
                max: 5,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => value!.noValidate(),
                label: tr('description'),
              ),
              Padding(
                padding: Dimens.paddingVertical5PX,
                child: Text(
                  tr('metaImage'),
                  style: AppTextStyle.s15_w700(
                    color: context.colors.black,
                  ),
                ),
              ),
              BuildAddMetaImage(controller: controller),
            ],
          ),
        ),
      ],
    );
  }
}
