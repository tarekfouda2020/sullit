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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap10,
          BuildInputLabel(label: tr('yourName')),
          GenericTextField(
            fillColor: context.colors.white,
            controller: controller.nameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            margin:  Dimens.marginTop5Bottom12,
            hint: tr('yourName'),
          ),
          BuildInputLabel(label: tr('yourEmail')),
          GenericTextField(
            fillColor: context.colors.white,
            controller: controller.emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            hint: tr('yourEmail'),
            margin:  Dimens.marginTop5Bottom12,
          ),
          PhoneInputAndVerify(controller: controller)
          // GenericTextField(
          //   fillColor: context.colors.white,
          //   fieldTypes: FieldTypes.clickable,
          //   label: tr('address'),
          //   action: TextInputAction.go,
          //   controller: controller.addressController,
          //   type: TextInputType.text,
          //   margin: Dimens.paddingVertical15PX,
          //   onTab: () => controller.navigateToAddresses(context),
          //   validate: (value) => value!.noValidate(),
          // ),
        ],
      ),
    );
  }
}
