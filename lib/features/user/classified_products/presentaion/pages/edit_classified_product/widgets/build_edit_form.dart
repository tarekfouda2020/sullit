part of 'edit_classified_product_w_imports.dart';

class BuildEditForm extends StatelessWidget {
  final EditClassifiedProductController controller;

  const BuildEditForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
          key: controller.formKey,
          child: SingleChildScrollView(
            padding: Dimens.paddingAll15PX,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildEditGeneralFields(controller: controller),
                BuildPhotosView(controller: controller),
                BuildVideoView(controller: controller),
                BuildMetaInputs(controller: controller),
                BuildEditPrice(controller: controller),
                BuildDescription(controller: controller),
                BuildPdf(controller: controller),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
