part of 'add_classified_product_w_imports.dart';

class BuildVideosView extends StatelessWidget {
  final AddClassifiedProductsController controller;

  const BuildVideosView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Dimens.paddingT20B10,
          child: Text(
            tr('videos'),
            style: AppTextStyle.s15_w700(
              color: context.colors.black,
            ),
          ),
        ),
        Container(
          padding: Dimens.paddingAll10PX,
          decoration: CustomDecoration(),
          child: Column(
            children: [
              DropdownTextField<VideoProvider>(
                itemAsString: (model) => (model).name,
                title: tr('selVideoForm'),
                margin: Dimens.paddingVertical10PX,
                label: tr('selVideoForm'),
                dropKey: controller.videoProviderDropKey,
                useName: true,
                onFind: (data) => controller.getVideoProviders(),
                selectedItem: controller.videoProvider,
                onChange: (value) => controller.selectVideoProvider(value),
                validate: (value) => noValidateDropDown(),
              ),
              GenericTextField(
                margin: Dimens.paddingVertical10PX,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                controller: controller.videoUrlController,
                validate: (value) => value!.validateVideoUrl(
                  controller.videoUrlValidator,
                  controller.videoProvider,
                  value,
                ),
                label: tr('videoUrl'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
