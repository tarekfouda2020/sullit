part of 'contact_us_widgets_imports.dart';

class ContactUsFormWidget extends StatelessWidget {
  final ContactUsController controller;

  const ContactUsFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildInputLabel(
            label: tr("userName"),
          ),
          GenericTextField(
            controller: controller.name,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            fillColor: context.colors.white,
            validate: (value) => value?.validateName(),
            hint: tr('userName'),
            margin: Dimens.marginTop5Bottom12,
          ),
          BuildInputLabel(
            label: tr("email"),
          ),
          GenericTextField(
            fillColor: context.colors.white,
            controller: controller.email,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            hint: tr('email'),
            margin: Dimens.marginTop5Bottom12,
            radius: Dimens.borderRadius40PX,
          ),
          BuildInputLabel(
            label: tr("phoneNumber"),
          ),
          BlocBuilder<GenericBloc<Country?>, GenericState<Country?>>(
            bloc: controller.countryCubit,
            builder: (context, state) {
              return GenericTextField(
                fillColor: context.colors.white,
                contentPadding: Dimens.paddingH12V16,
                enableBorderColor: context.colors.white,
                focusBorderColor: context.colors.borderColor,
                controller: controller.phone,
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.next,
                hint: "53534332",
                margin: Dimens.marginTop5Bottom12,
                validate: (value) => ((state.data?.callingCode ?? "") + (value ?? "")).validatePhoneOrNull(),
                prefixIcon: PhoneFieldPrefixWidget(
                  countryCubit: controller.countryCubit,
                ),
              );
            },
          ),
          BuildInputLabel(
            label: tr("title"),
          ),
          GenericTextField(
            fillColor: context.colors.white,
            contentPadding: Dimens.paddingH12V16,
            controller: controller.subject,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            hint: tr('enterTitle'),
            margin: Dimens.marginTop5Bottom12,
          ),
          BuildInputLabel(
            label: tr("message"),
          ),
          GenericTextField(
            fillColor: context.colors.white,
            contentPadding: Dimens.paddingH12V16,
            controller: controller.message,
            fieldTypes: FieldTypes.rich,
            type: TextInputType.text,
            action: TextInputAction.done,
            validate: (value) => value?.validateEmpty(),
            hint: tr('enterYourMsg'),
            margin: Dimens.marginTop5Bottom12,
          ),
        ],
      ),
    );
  }
}
