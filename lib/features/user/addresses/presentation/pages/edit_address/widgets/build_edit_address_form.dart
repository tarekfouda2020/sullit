part of 'edit_address_w_imports.dart';

class BuildEditAddressForm extends StatelessWidget {
  final EditAddressController controller;

  final Address? address;

  const BuildEditAddressForm(
      {Key? key, required this.controller, required this.address})
      : super(key: key);

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
              validate: (value) => value!.validateEmpty(),
              label: tr('address'),
              fillColor: context.colors.white,
              margin: Dimens.paddingVertical10PX,
            ),
            DropdownTextField<Country>(
              itemAsString: (item) => (item).name,
              fillColor: context.colors.white,
              textSize: 16.sp,
              title: tr('selectCountry'),
              margin: Dimens.paddingVertical10PX,
              label: tr('selectCountry'),
              dropKey: controller.countryController,
              useName: true,
              onFind: (data) => controller.getCountries(),
              fontSize: 16.sp,
              selectedItem: address?.country ?? controller.countryModel,
              onChange: (value) => controller.onChangeCountry(value),
              validate: (value) => validateDropDown(value),
            ),
            BlocBuilder<GenericBloc<Country?>, GenericState<Country?>>(
              bloc: controller.countryCubit,
              builder: (context, state) {
                return AbsorbPointer(
                  absorbing: state.data == null,
                  child: DropdownTextField<StateDomainModel>(
                    itemAsString: (item) => item.name,
                    fillColor: context.colors.white,
                    textSize: 16.sp,
                    title: tr('selectState'),
                    margin: Dimens.paddingVertical10PX,
                    label: tr('selectState'),
                    dropKey: controller.stateController,
                    useName: true,
                    onFind: (data) => controller.getStateByCountryId(context),
                    fontSize: 16.sp,
                    selectedItem: address?.state ?? controller.stateModel,
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
                    itemAsString: (item) => item.name,
                    fillColor: context.colors.white,
                    textSize: 16.sp,
                    title: tr("selectCity"),
                    margin: Dimens.paddingVertical10PX,
                    label: tr('selectCity'),
                    dropKey: controller.cityController,
                    useName: true,
                    onFind: (data) => controller.getCitiesByStateId(),
                    fontSize: 16.sp,
                    selectedItem: address?.city ?? controller.cityModel,
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
              margin: Dimens.paddingVertical10PX,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmpty(),
              label: tr("postalCode"),
            ),
            BlocBuilder<GenericBloc<package.Country?>,
                GenericState<package.Country?>>(
              bloc: controller.countryCodeCubit,
              builder: (context, state) {
                return Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GenericTextField(
                        fillColor: context.colors.white,
                        controller: TextEditingController(
                            text: state.data?.callingCode ?? ""),
                        fieldTypes: FieldTypes.clickable,
                        type: TextInputType.text,
                        action: TextInputAction.done,
                        label: tr("countryCode"),
                        validate: (value) => value!.validateEmpty(),
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
                                .validatePhone(),
                        label: tr("phone"),
                        margin: Dimens.paddingVertical10PX,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
