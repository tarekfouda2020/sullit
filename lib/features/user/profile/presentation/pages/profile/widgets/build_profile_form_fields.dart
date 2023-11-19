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
          Row(
            children: [
              Expanded(
                flex: 1,
                child:
                    BlocBuilder<GenericBloc<Country?>, GenericState<Country?>>(
                  bloc: controller.countryCubit,
                  builder: (context, state) {
                    return GenericTextField(
                      fillColor: context.colors.white,
                      controller: TextEditingController(
                          text: state.data?.callingCode ?? ""),
                      fieldTypes: FieldTypes.clickable,
                      type: TextInputType.text,
                      action: TextInputAction.done,
                      label: "Country Code",
                      validate: (value) => state.data?.name.validateEmpty(),
                      onTab: () => controller.showCountryCode(context),
                    );
                  },
                ),
              ),
              Gaps.hGap5,
              Expanded(
                flex: 2,
                child: GenericTextField(
                  fillColor: context.colors.white,
                  controller: controller.phoneController,
                  fieldTypes: FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.next,
                  validate: (value) => value?.validatePhone(),
                  label: tr('phone'),
                ),
              ),
            ],
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
