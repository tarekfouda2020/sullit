part of 'login_widgets_imports.dart';

class PhoneFiledWidget extends StatelessWidget {
  final LoginController controller;
  const PhoneFiledWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<CountryCode?>, GenericState<CountryCode?>>(
      bloc: controller.countryCubit,
      builder: (context, state) {
        return GenericTextField(
          // hint: tr("enterPhone"),
          hint: "0501234567",
          fillColor: context.colors.white,
          contentPadding: Dimens.paddingH12V16,
          enableBorderColor: context.colors.white,
          focusBorderColor: context.colors.borderColor,
          controller: controller.phone,
          fieldTypes: FieldTypes.normal,
          type: TextInputType.phone,
          action: TextInputAction.next,
          validate: (value) => value?.isValidPhoneForCountry(state.data?.code),
          margin: Dimens.headerTitlePadding,
          prefixIcon: CountryCodePrefixWidget(countryCubit: controller.countryCubit),
        );
      },
    );
  }
}
