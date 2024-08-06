part of 'profile_widgets_imports.dart';

class BuildProfileFormFields extends StatelessWidget {
  final ProfileController controller;

  const BuildProfileFormFields({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = context.watch<UserCubit>().state.model;

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
          BlocBuilder<GenericBloc<Country?>, GenericState<Country?>>(
            bloc: controller.countryCubit,
            builder: (context, state) {
              return Row(
                children: [
                  Expanded(
                    child: GenericTextField(
                      fillColor: context.colors.white,
                      controller: TextEditingController(
                          text: state.data?.callingCode ?? ""),
                      fieldTypes: FieldTypes.clickable,
                      type: TextInputType.text,
                      action: TextInputAction.done,
                      label: tr("countryCode"),
                      validate: (value) => value!
                          .validateCountryCode(controller.phoneController.text),
                      onTab: () => controller.showCountryCode(context),
                    ),
                  ),
                  Gaps.hGap5,
                  Expanded(
                    flex: 2,
                    child: GenericTextField(
                      controller: controller.phoneController,
                      fieldTypes: FieldTypes.normal,
                      fillColor: context.colors.white,
                      type: TextInputType.number,
                      action: TextInputAction.done,
                      validate: (value) =>
                          ((state.data?.callingCode ?? "") + (value ?? ""))
                              .validatePhoneOrNull(),
                      label: tr("phone"),
                      margin: Dimens.paddingVertical10PX,
                    ),
                  ),
                  Gaps.hGap5,
                  BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                    bloc: controller.verifyPhoneCubit,
                    builder: (context, state) {
                      return Visibility(
                        visible: user?.fullPhone!="",
                        child: Visibility(
                          visible: !state.data,
                          child: Expanded(
                            child: InkWell(
                              onTap: () => controller.onActivePhone(context),
                              child: Container(
                                padding: Dimens.paddingVertical15PX,
                                decoration: BoxDecoration(
                                  borderRadius: Dimens.borderRadius5PX,
                                  color: context.colors.primary,
                                ),
                                child: Text(
                                  tr('verifyPhone'),
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.s11_w400(
                                    color: context.colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            },
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
            validate: (value) => value!.noValidate(),
          ),
        ],
      ),
    );
  }
}
