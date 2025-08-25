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
            BuildInputLabel(
              label: tr("location"),
            ),
            GenericTextField(
              type: TextInputType.none,
              controller: controller.locationController,
              fieldTypes: FieldTypes.clickable,
              onTab: ()  => controller.routeToDetectLocation(context),
              action: TextInputAction.done,
              fillColor: context.colors.white,
              validate: (value) => value?.validateEmpty(),
              hint: tr("detectLocation"),
              margin: Dimens.paddingVertical10PX,
            ),
            BuildInputLabel(
              label: tr("addressName"),
            ),
            GenericTextField(
              controller: controller.addressController,
              fieldTypes: FieldTypes.rich,
              type: TextInputType.multiline,
              action: TextInputAction.newline,
              validate: (value) => value!.validateEmpty(),
              hint: tr('address'),
              fillColor: context.colors.white,
              margin: Dimens.paddingVertical10PX,
            ),
            BuildInputLabel(
              label: tr("country"),
            ),
            DropdownTextField<Country>(
              itemAsString: (item) => (item).name,
              fillColor: context.colors.white,
              textSize: 16.sp,
              title: tr('selectCountry'),
              margin: Dimens.paddingVertical10PX,
              hint: tr('selectCountry'),
              dropKey: controller.countryController,
              useName: true,
              onFind: (data) => controller.getCountries(),
              fontSize: 16.sp,
              selectedItem: address?.country ?? controller.countryModel,
              onChange: (value) => controller.onChangeCountry(value),
              validate: (value) => validateDropDown(value),
            ),
            BuildInputLabel(
              label: tr("state"),
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
                    hint: tr('selectState'),
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
            BuildInputLabel(
              label: tr("city"),
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
                    hint: tr('selectCity'),
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
            const BuildInputLabel(
              label: "Address Type",
            ),
            DropdownTextField<AddressTypeModel>(
              dropKey: controller.addressTypeKey,
              title: "Select Type",
              hint: "Select Type",
              margin: Dimens.paddingVertical10PX,
              itemAsString: (item) => item.label,
              fillColor: context.colors.white,
              textSize: 16.sp,
              useName: true,
              onFind: (data)=> controller.getAddressTypes(),
              fontSize: 16.sp,
              onChange: (value) => controller.onSelectAddressType(value),
              validate: (value) => validateDropDown(value),
              selectedItem: controller.addressTypeModel,
            ),
            // GenericTextField(
            //   controller: controller.postalCodeController,
            //   fieldTypes: FieldTypes.normal,
            //   type: TextInputType.text,
            //   fillColor: context.colors.white,
            //   margin: Dimens.paddingVertical10PX,
            //   action: TextInputAction.next,
            //   validate: (value) => value?.validateEmpty(),
            //   label: tr("postalCode"),
            // ),
            BuildInputLabel(
              label: tr("phoneNumber"),
            ),
            BlocBuilder<GenericBloc<package.Country?>,
                GenericState<package.Country?>>(
              bloc: controller.countryCodeCubit,
              builder: (context, state) {
                return  GenericTextField(
                  controller: controller.phoneController,
                  fieldTypes: FieldTypes.normal,
                  fillColor: context.colors.white,
                  type: TextInputType.number,
                  action: TextInputAction.done,
                  validate: (value) =>
                      ((state.data?.callingCode ?? "") + (value ?? ""))
                          .validatePhone(),
                  // validate: (value) => value?.validatePhone(),
                  hint: tr("phoneNumber"),
                  margin: Dimens.paddingVertical10PX,
                  prefixIcon: _buildPrefixIcon(context,state),
                );
              },
            ),
            // BlocBuilder<GenericBloc<package.Country?>, GenericState<package.Country?>>(
            //   bloc: controller.countryCodeCubit,
            //   builder: (context, state) {
            //     return Row(
            //       children: [
            //         Expanded(
            //           flex: 1,
            //           child: GenericTextField(
            //             fillColor: context.colors.white,
            //             controller: TextEditingController(
            //                 text: state.data?.callingCode ?? ""),
            //             fieldTypes: FieldTypes.clickable,
            //             type: TextInputType.text,
            //             action: TextInputAction.done,
            //             label: tr("countryCode"),
            //             validate: (value) => value!.validateEmpty(),
            //             onTab: () => controller.showCountryCode(context),
            //           ),
            //         ),
            //         Gaps.hGap5,
            //         Expanded(
            //           flex: 2,
            //           child: GenericTextField(
            //             controller: controller.phoneController,
            //             fieldTypes: FieldTypes.normal,
            //             fillColor: context.colors.white,
            //             type: TextInputType.number,
            //             action: TextInputAction.done,
            //             validate: (value) =>
            //                 ((state.data?.callingCode ?? "") + (value ?? ""))
            //                     .validatePhone(),
            //             label: tr("phone"),
            //             margin: Dimens.paddingVertical10PX,
            //           ),
            //         ),
            //       ],
            //     );
            //   },
            // ),
            BuildInputLabel(
              label: tr("streetName"),
            ),
            GenericTextField(
              controller: controller.streetController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              fillColor: context.colors.white,
              margin: Dimens.paddingVertical10PX,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmpty(),
              hint: "street name",
            ),
            BuildInputLabel(
              label: tr("buildingName"),
            ),
            GenericTextField(
              controller: controller.buildingController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              fillColor: context.colors.white,
              margin: Dimens.paddingVertical10PX,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmpty(),
              hint: "building name",
            ),
            BuildInputLabel(
              label: tr("flatNo"),
            ),
            GenericTextField(
              controller: controller.flatController,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.number,
              fillColor: context.colors.white,
              margin: Dimens.paddingVertical10PX,
              action: TextInputAction.next,
              validate: (value) => value?.validateEmpty(),
              label: "flat No:",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrefixIcon(BuildContext context, GenericState<package.Country?> state) {
    return GestureDetector(
      onTap: () => controller.showCountryCode(context),
      child: Visibility(
        visible: state.data != null,
        replacement: Padding(
          padding: const EdgeInsetsDirectional.only(start: 23,top: 16,end: 17),
          child: Text(
            "Select Country",
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 23),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if(state.data?.flag != null && state.data!.flag.isNotEmpty)
                Image.asset(
                  state.data!.flag,
                  width: 25,
                  height: 25,
                  package: "country_calling_code_picker",
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: context.colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      Icons.flag,
                      size: 16,
                      color: context.colors.white,
                    ),
                  ),
                ),
              Gaps.hGap5,
              Flexible(
                child: Text(
                  state.data?.callingCode ?? "",
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if(state.data?.callingCode != null && state.data!.callingCode.isNotEmpty)
                Gaps.hGap5,
              if(state.data?.callingCode != null && state.data!.callingCode.isNotEmpty)
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: context.colors.black,
                  size: 20,
                ),
              Gaps.hGap10,
            ],
          ),
        ),
      ),
    );
  }
}
