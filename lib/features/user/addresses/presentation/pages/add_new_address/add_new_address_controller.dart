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

  Country? countryModel;
  StateDomainModel? stateModel;
  City? cityModel;

  void onChangeCountry(Country? model) {
    if (model != null) {
      countryModel = model;
    }
    stateController.currentState?.changeSelectedItem(null);
    cityController.currentState?.changeSelectedItem(null);
  }

  void onChangeState(StateDomainModel? model) {
    if (model != null) {
      stateModel = model;
    }
    cityController.currentState?.changeSelectedItem(null);
  }

  void onChangeCity(City? model) {
    if (model != null) {
      cityModel = model;
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

  Future<void> addNewAddress(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var params = _addressParams();
      var result = await SetAddNewAddress().call(params);
      if (result != null) {
        CustomToast.showSimpleToast(msg: "Address info added successfully");
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
      lat: locationCubit.state.model!.lat,
      long: locationCubit.state.model!.lng,
    );
  }
}
