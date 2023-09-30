part of 'add_classified_product_w_imports.dart';

class BuildVideosView extends StatelessWidget {
  final AddClassifiedProductsController controller ;
  const BuildVideosView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            tr('videos'),
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
              DropdownTextField<VideoProvider>(
                fillColor: context.colors.white,
                textSize: 16.sp,
                itemAsString: (model) => (model).name,
                showClearButton: false,
                title: tr('selectService'),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                label:  tr('selectServiceType'),
                dropKey: controller.videoProviderDropKey,
                useName: true,
                onFind: (data) => controller.getVideoProviders(),
                fontSize:16.sp,
                selectedItem: controller.videoProvider,
                radius: BorderRadius.circular(5.r),
                onChange: (value) => controller.selectVideoProvider(value),
                validate: (value) => validateDropDown(value),
              ),
              GenericTextField(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                controller: controller.videoUrlController,
                validate: (value) => controller.validateVideoUrl(),
                label: tr('videoUrl'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
