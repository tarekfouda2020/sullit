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

  EditAddressController(Address address) {
    addressController.text = address.address ?? "";
    postalCodeController.text = address.postalCode ?? "";
    phoneController.text = address.phone ?? "";
  }

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

  void onChangeCity(City? model) {
    if (model != null) {
      cityModel = model;
    }
  }

  void onChangeState(StateDomainModel? model) {
    if (model != null) {
      stateModel = model;
    }
    cityController.currentState?.changeSelectedItem(null);
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
