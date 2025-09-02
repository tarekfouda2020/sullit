part of 'add_new_address_widgets_imports.dart';

class LocationFieldsWidget extends StatelessWidget {
  final AddNewAddressController controller;
  const LocationFieldsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BuildInputLabel(
          label: tr("country"),
        ),
        DropdownTextField<Country>(
          itemAsString: (item) => (item).name,
          fillColor: context.colors.white,
          textSize: 16.sp,
          title: tr("selectCountry"),
          margin: Dimens.paddingVertical10PX,
          hint:tr("selectCountry"),
          dropKey: controller.countryController,
          useName: true,
          onFind: (data) => controller.getCountries(),
          fontSize: 16.sp,
          selectedItem: controller.countryModel,
          onChange: (value) => controller.onChangeCountry(value),
          validate: (value) => validateDropDown(value),
          contentPadding: const EdgeInsetsDirectional.only(start: 32,end: 29),
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
                itemAsString: (item) => (item).name,
                fillColor: context.colors.white,
                textSize: 16.sp,
                title:tr("selectState"),
                margin: Dimens.paddingVertical10PX,
                label: tr("selectState"),
                dropKey: controller.stateController,
                useName: true,
                onFind: (data) => controller.getStateByCountryId(context),
                fontSize: 16.sp,
                selectedItem: controller.stateModel,
                onChange: (value) => controller.onChangeState(value),
                validate: (value) => validateDropDown(value),
                contentPadding: const EdgeInsetsDirectional.only(start: 32,end: 29),
              ),
            );
          },
        ),
        BuildInputLabel(
          label: tr("city"),
        ),
        BlocBuilder<GenericBloc<StateDomainModel?>,GenericState<StateDomainModel?>>(
          bloc: controller.stateCubit,
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state.data == null,
              child: DropdownTextField<City>(
                itemAsString: (item) => (item).name,
                fillColor: context.colors.white,
                textSize: 16.sp,
                title: tr("selectCity"),
                margin: Dimens.paddingVertical10PX,
                label: tr("selectCity"),
                dropKey: controller.cityController,
                useName: true,
                onFind: (data) => controller.getCitiesByStateId(),
                fontSize: 16.sp,
                selectedItem: controller.cityModel,
                onChange: (value) => controller.onChangeCity(value),
                validate: (value) => validateDropDown(value),
                contentPadding: const EdgeInsetsDirectional.only(start: 32,end: 29),
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
          label: "Select Type",
          margin: Dimens.paddingVertical10PX,
          itemAsString: (item) => item.label,
          fillColor: context.colors.white,
          textSize: 16.sp,
          useName: true,
          onFind: (data)=> controller.getAddressTypes(),
          fontSize: 16.sp,
          onChange: (value) => controller.onSelectAddressType(value),
          validate: (value) => validateDropDown(value),
          contentPadding: const EdgeInsetsDirectional.only(start: 32,end: 29),
          selectedItem: controller.addressTypeModel,
        ),
      ],
    );
  }
}
