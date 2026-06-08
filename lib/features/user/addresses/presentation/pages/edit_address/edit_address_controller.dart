// ignore_for_file: use_build_context_synchronously

part of 'edit_address_imports.dart';

class EditAddressController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController flatController = TextEditingController();
  final TextEditingController buildingController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final GlobalKey<DropdownSearchState> countryController = GlobalKey();
  final GlobalKey<DropdownSearchState> stateController = GlobalKey();
  final GlobalKey<DropdownSearchState> cityController = GlobalKey();
  final GlobalKey<DropdownSearchState> addressTypeKey = GlobalKey();
  final LocationCubit locationCubit = LocationCubit();
  final GenericBloc<Country?> countryCubit = GenericBloc(null);
  final GenericBloc<StateDomainModel?> stateCubit = GenericBloc(null);
  final GenericBloc<City?> cityCubit = GenericBloc(null);
  final GenericBloc<package.Country?> countryCodeCubit =
      GenericBloc(CountryPickerHelper.defaultCountrySync);

  final TextEditingController stateNameCtr = TextEditingController();
  final TextEditingController cityNameCtr = TextEditingController();

  EditAddressController(AddressDomainModel address) {
    addressController.text = address.address ?? "";
    postalCodeController.text = address.postalCode ?? "";
    phoneController.text = address.phone ?? "";
    typeController.text = address.addressType ?? "";
    flatController.text = address.flatNumber ?? "";
    buildingController.text = address.buildingName ?? "";
    streetController.text = address.streetName ?? "";
    // stateNameCtr.text = address.state?.name ?? "";
    // cityNameCtr.text = address.city?.name ?? "";
    stateNameCtr.text = address.stateName ?? "";
    cityNameCtr.text = address.cityName ?? "";
    addressTypeModel = AddressTypeModel(
        key: address.addressType ?? "", label: address.addressTypeLabel ?? "");
  }

  Country? countryModel;
  StateDomainModel? stateModel;
  City? cityModel;
  AddressTypeModel? addressTypeModel;

  Future<List<AddressTypeModel>> getAddressTypes({bool refresh = true}) async {
    var data = await GetAddressTypes().call(refresh);
    return data;
  }

  void onSelectAddressType(AddressTypeModel? model) {
    if (model != null) {
      addressTypeModel = model;
    }
  }

  void onChangeCountry(Country? model) {
    countryCubit.onUpdateToInitState(null);
    stateController.currentState?.changeSelectedItem(null);
    cityController.currentState?.changeSelectedItem(null);
    if (model != null) {
      countryModel = model;
      countryCubit.onUpdateData(model);
    }
  }

  void onChangeState(StateDomainModel? model) {
    stateCubit.onUpdateToInitState(null);
    cityController.currentState?.changeSelectedItem(null);
    if (model != null) {
      stateModel = model;
      stateCubit.onUpdateData(model);
    }
  }

  void onChangeCity(City? model) {
    cityCubit.onUpdateToInitState(null);
    if (model != null) {
      cityModel = model;
      cityCubit.onUpdateData(model);
    }
  }

  Future<List<Country>> getCountries({bool refresh = true}) async {
    var data = await GetCountries().call(refresh);
    return data;
  }

  Future<List<StateDomainModel>> getStateByCountryId(
      BuildContext context) async {
    var data = await GetStatesByCountryId().call(countryModel!.id);
    return data;
  }

  Future<List<City>> getCitiesByStateId() async {
    var data = await GetCitiesByStateId().call(stateModel!.id);
    return data;
  }

  void showCountryCode(BuildContext context) async {
    package.Country? data = await showCountryPickerDialog(
      context,
      cornerRadius: 3,
    );
    if (data != null) {
      countryCodeCubit.onUpdateData(data);
    }
  }

  Future<void> editAddress(
      BuildContext context, AddressDomainModel address) async {
    if (formKey.currentState!.validate()) {
      var params = _addressParams(address);
      var result = await SetEditAddress().call(params);
      if (result != null) {
        CustomToast.showSimpleToast(
          msg: tr("addressInfoEditedSuccessfully"),
          type: ToastType.success,
        );
        AutoRouter.of(context).pop(result);
      }
    }
  }

  void routeToDetectLocation(BuildContext context) async {
    var result =
        await AutoRouter.of(context).push(LocationAddressRoute(fromEdit: true));
    if (result != null && result is LocationEntity) {
      locationController.text = result.address;
      streetController.text = result.fullAddress?.streetAddress ?? "";
      stateNameCtr.text = result.fullAddress?.region ?? "";
      cityNameCtr.text = result.fullAddress?.city ?? "";
    }
  }

  void updateLocationFiled(BuildContext context) async {
    var model = context.read<LocationCubit>().state.model;
    LatLng loc = LatLng(model!.lat, model.lng);
    String address =
        await getIt<LocationService>().getAddress(loc, setCountryName: false);
    locationController.text = address;
  }

  EditAddressParams _addressParams(AddressDomainModel address) {
    return EditAddressParams(
        id: address.id ?? 0,
        address: addressController.text,
        // postalCode: postalCodeController.text,
        // countryId: countryModel?.id ?? address.country!.id,
        stateName: stateNameCtr.text,
        cityName: cityNameCtr.text,
        phone: phoneController.text,
        countryCode: countryCodeCubit.state.data?.callingCode ?? "",
        lat: locationCubit.state.model!.lat,
        long: locationCubit.state.model!.lng,
        buildingName: buildingController.text,
        flatNumber: flatController.text,
        streetName: streetController.text,
        addressType: addressTypeModel!.key);
  }
}
