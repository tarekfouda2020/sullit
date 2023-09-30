part of 'edit_classified_product_w_imports.dart';

class BuildVideoView extends StatelessWidget {
  final EditClassifiedProductController controller ;
  const BuildVideoView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            tr('videos'),
            style: AppTextStyle.s16_w700(color: context.colors.black),
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
                title: tr('selVideoForm'),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                label: tr('selVideoForm'),
                dropKey: controller.videoProviderDropKey,
                useName: true,
                onFind: (data) => controller.getVideoProviders(),
                fontSize:16.sp,
                selectedItem: controller.videoProvider,
                radius: BorderRadius.circular(5.r),
                onChange: (value) => controller.selectVideoForm(value),
                validate: (value) => validateDropDown(value),
              ),
              GenericTextField(
                controller: controller.videoLink,
                margin: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 10),
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                validate: (value) => controller.validateVideoUrl(),
                label: tr('videoUrl')
              ),
            ],
          ),
        ),
      ],
    );

  }
}
