part of 'profile_widgets_imports.dart';

class BuildProfileFormFields extends StatelessWidget {
  final ProfileController controller;

  const BuildProfileFormFields({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          Gaps.vGap10,
          GenericTextField(
            fillColor: context.colors.white,
            controller: controller.nameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            label: tr('yourName'),
          ),
          GenericTextField(
            fillColor: context.colors.white,
            controller: controller.emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            label: tr('yourEmail'),
            margin: Dimens.paddingVertical15PX,
          ),
          GenericTextField(
            fillColor: context.colors.white,
            controller: controller.phoneController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.number,
            action: TextInputAction.next,
            validate:(value) => value?.validatePhone(),
            label: tr('phone'),
          ),
          GenericTextField(
            fillColor: context.colors.white,
            fieldTypes: FieldTypes.clickable,
            label: tr('address'),
            action: TextInputAction.go,
            controller: controller.addressController,
            type: TextInputType.text,
            margin: Dimens.paddingVertical15PX,
            onTab: () => controller.navigateToAddresses(context),
            validate: (value) => value!.validateEmpty(),
          ),
        ],
      ),
    );
  }
}
