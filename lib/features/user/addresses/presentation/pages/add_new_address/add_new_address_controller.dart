// ignore_for_file: use_build_context_synchronously

part of 'add_new_address_imports.dart';

class AddNewAddressController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<DropdownSearchState> countryController = GlobalKey();
  final GlobalKey<DropdownSearchState> stateController = GlobalKey();
  final GlobalKey<DropdownSearchState> cityController = GlobalKey();
  final LocationCubit locationCubit = LocationCubit();

  final GenericBloc<package.Country?> countryCodeCubit = GenericBloc(null);
  final GenericBloc<Country?> countryCubit = GenericBloc(null);
  final GenericBloc<StateDomainModel?> stateCubit = GenericBloc(null);
  final GenericBloc<City?> cityCubit = GenericBloc(null);

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


  void showCountryCode(BuildContext context) async {
    package.Country? data = await package.showCountryPickerDialog(
      context,
      cornerRadius: 3,
    );
    if (data != null) {
      countryCodeCubit.onUpdateData(data);
    }
  }

  Future<void> addNewAddress(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var params = _addressParams();
      var result = await SetAddNewAddress().call(params);
      if (result != null) {
        CustomToast.showSimpleToast(msg: tr("msgInfoAddedSuccess"));
        AutoRouter.of(context).pop(result);
      }
    }
  }


  AddAddressParams _addressParams() {
    return AddAddressParams(
      address: addressController.text,
      postalCode: postalCodeController.text,
      countryId: countryModel!.id,
      stateId: stateModel!.id,
      cityId: cityModel!.id,
      phone: phoneController.text,
      countryCode: countryCodeCubit.state.data?.callingCode ?? "",
      lat: locationCubit.state.model!.lat,
      long: locationCubit.state.model!.lng,
    );
  }
}
