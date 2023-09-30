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
              label:  tr('selectCountry'),
              dropKey: controller.countryController,
              useName: true,
              onFind: (data) => controller.getCountries(),
              fontSize: 16.sp,
              selectedItem: address?.country ?? controller.countryModel,
              onChange: (value) => controller.onChangeCountry(value),
              validate: (value) => validateDropDown(value),
            ),
            DropdownTextField<StateDomainModel>(
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
            DropdownTextField<City>(
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
            GenericTextField(
              controller: controller.phoneController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.number,
              action: TextInputAction.next,
              validate: (value) => value?.validatePhone(),
              label: tr("phone"),
              fillColor: context.colors.white,
              margin: Dimens.paddingVertical10PX,
            ),
          ],
        ),
      ),
    );
  }
}
