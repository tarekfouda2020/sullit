// ignore_for_file: use_build_context_synchronously

part of 'edit_address_imports.dart';

class EditAddressController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<DropdownSearchState> countryController = GlobalKey();
  final GlobalKey<DropdownSearchState> stateController = GlobalKey();
  final GlobalKey<DropdownSearchState> cityController = GlobalKey();
  final LocationCubit locationCubit = LocationCubit();
  final GenericBloc<Country?> countryCubit = GenericBloc(null);
  final GenericBloc<StateDomainModel?> stateCubit = GenericBloc(null);
  final GenericBloc<City?> cityCubit = GenericBloc(null);

  EditAddressController(Address address) {
    addressController.text = address.address ?? "";
    postalCodeController.text = address.postalCode ?? "";
    phoneController.text = address.phone ?? "";
  }

  Country? countryModel;
  StateDomainModel? stateModel;
  City? cityModel;

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

  Future<void> editAddress(BuildContext context, Address address) async {
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

  EditAddressParams _addressParams(Address address) {
    return EditAddressParams(
      id: address.id ?? 0,
      address: addressController.text,
      postalCode: postalCodeController.text,
      countryId: countryModel?.id ?? address.country!.id,
      stateId: stateModel?.id ?? address.state!.id,
      cityId: cityModel?.id ?? address.city!.id,
      phone: phoneController.text,
      lat: locationCubit.state.model!.lat,
      long: locationCubit.state.model!.lng,
    );
  }
}
