part of 'edit_classified_product_w_imports.dart';

class BuildVideoView extends StatelessWidget {
  final EditClassifiedProductController controller;

  const BuildVideoView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Dimens.paddingT20B10,
          child: Text(
            tr('videos'),
            style: AppTextStyle.s15_w700(color: context.colors.black),
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
                label: tr('selVideoForm'),
                margin: Dimens.paddingVertical10PX,
                dropKey: controller.videoProviderDropKey,
                useName: true,
                onFind: (data) => controller.getVideoProviders(),
                selectedItem: controller.videoProvider,
                onChange: (value) => controller.selectVideoForm(value),
                validate: (value) =>noValidateDropDown(),
              ),
              GenericTextField(
                controller: controller.videoLink,
                margin: Dimens.paddingVertical10PX,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
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
