part of 'add_new_address_widgets_imports.dart';

class BuildAddAddressForm extends StatelessWidget {
  final AddNewAddressController controller;

  const BuildAddAddressForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Flexible(
        child: ListView(
          padding: const EdgeInsets.all(Dimens.dp20),
          children: [
            GenericTextField(
              controller: controller.addressController,
              fieldTypes: FieldTypes.rich,
              type: TextInputType.multiline,
              action: TextInputAction.newline,
              max: 3,
              fillColor: context.colors.white,
              validate: (value) => value?.validateEmpty(),
              label: "Address",
              margin: Dimens.paddingVertical10PX,
            ),
            DropdownTextField<Country>(
              itemAsString: (item) => (item).name,
              fillColor: context.colors.white,
              textSize: 16.sp,
              title: "Select Country",
              margin: Dimens.paddingVertical10PX,
              label: "Select Country",
              dropKey: controller.countryController,
              useName: true,
              onFind: (data) => controller.getCountries(),
              fontSize: 16.sp,
              selectedItem: controller.countryModel,
              onChange: (value) => controller.onChangeCountry(value),
              validate: (value) => validateDropDown(value),
            ),
            BlocBuilder<GenericBloc<Country?>, GenericState<Country?>>(
              bloc: controller.countryCubit,
              builder: (context, state) {
                return AbsorbPointer(
                  absorbing: state.data == null,
                  child: DropdownTextField<StateDomainModel>(
                    itemAsString: (item) => (item).name,
                    fillColor: context.colors.white,
                    textSize: 16.sp,
                    title: "Select State",
                    margin: Dimens.paddingVertical10PX,
                    label: "Select State",
                    dropKey: controller.stateController,
                    useName: true,
                    onFind: (data) => controller.getStateByCountryId(context),
                    fontSize: 16.sp,
                    selectedItem: controller.stateModel,
                    onChange: (value) => controller.onChangeState(value),
                    validate: (value) => validateDropDown(value),
                  ),
                );
              },
            ),
            BlocBuilder<GenericBloc<StateDomainModel?>,
                GenericState<StateDomainModel?>>(
              bloc: controller.stateCubit,
              builder: (context, state) {
                return AbsorbPointer(
                  absorbing: state.data == null,
                  child: DropdownTextField<City>(
                    itemAsString: (item) => (item).name,
                    fillColor: context.colors.white,
                    textSize: 16.sp,
                    title: "Select City",
                    margin: Dimens.paddingVertical10PX,
                    label: "Select City",
                    dropKey: controller.cityController,
                    useName: true,
                    onFind: (data) => controller.getCitiesByStateId(),
                    fontSize: 16.sp,
                    selectedItem: controller.cityModel,
                    onChange: (value) => controller.onChangeCity(value),
                    validate: (value) => validateDropDown(value),
                  ),
                );
              },
            ),
            GenericTextField(
              controller: controller.postalCodeController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              fillColor: context.colors.white,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmpty(),
              label: "Postal Code",
              margin: Dimens.paddingVertical10PX,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: BlocBuilder<GenericBloc<package.Country?>,
                      GenericState<package.Country?>>(
                    bloc: controller.countryCodeCubit,
                    builder: (context, state) {
                      return GenericTextField(
                        fillColor: context.colors.white,
                        controller: TextEditingController(
                            text: state.data?.callingCode ?? ""),
                        fieldTypes: FieldTypes.clickable,
                        type: TextInputType.text,
                        action: TextInputAction.done,
                        label: "Country Code",
                        validate: (value) => value?.validateEmpty(),
                        onTab: () => controller.showCountryCode(context),
                      );
                    },
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
                    validate: (value) => value?.validatePhone(),
                    label: "Phone",
                    margin: Dimens.paddingVertical10PX,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
