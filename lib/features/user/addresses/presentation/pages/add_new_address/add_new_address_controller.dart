// ignore_for_file: use_build_context_synchronously

part of 'add_new_address_imports.dart';

class AddNewAddressController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController streetNameController = TextEditingController();
  final TextEditingController buildingNameController = TextEditingController();
  final TextEditingController flatNumberController = TextEditingController();


  final TextEditingController stateNameCtr = TextEditingController();
  final TextEditingController cityNameCtr = TextEditingController();


  // final GlobalKey<DropdownSearchState> countryController = GlobalKey();
  final GlobalKey<DropdownSearchState> stateController = GlobalKey();
  final GlobalKey<DropdownSearchState> cityController = GlobalKey();
  final GlobalKey<DropdownSearchState> addressTypeKey = GlobalKey();
  final LocationCubit locationCubit = LocationCubit();

  final GenericBloc<package.Country?> countryCodeCubit = GenericBloc(CountryPickerHelper.defaultCountrySync);
  final GenericBloc<Country?> countryCubit = GenericBloc(null);
  final GenericBloc<StateDomainModel?> stateCubit = GenericBloc(null);
  final GenericBloc<City?> cityCubit = GenericBloc(null);

  Country? countryModel;
  StateDomainModel? stateModel;
  City? cityModel;
  AddressTypeModel? addressTypeModel;

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


  void onSelectAddressType(AddressTypeModel? model) {
    if (model != null) {
      addressTypeModel = model;
    }
  }

  Future<List<Country>> getCountries({bool refresh = true}) async {
    var data = await GetCountries().call(refresh);
    return data;
  }

  Future<List<AddressTypeModel>> getAddressTypes({bool refresh = true}) async {
     var data = await GetAddressTypes().call(refresh);
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
    package.Country? data = await showCountryPickerSheet(
      context,
      cancelWidget: PositionedDirectional(
        end: 10,
        child: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: BoxDecoration(
              color: context.colors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child:  Text(
              tr("cancel"),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      cornerRadius: 3,
      backgroundColor: context.colors.white,
      textColor: context.colors.black,
      chooseRegionText: tr("chooseRegion"),
      getLocalizedCountryName: CountryPickerHelper.getLocalizedCountryName,
      translate: (key) => tr(key),
    );
    if (data != null) {
      countryCodeCubit.onUpdateData(data);
    }
  }

  Future<void> addNewAddress(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var params = await _addressParams();
      var result = await SetAddNewAddress().call(params);
      if (result != null) {
        CustomToast.showSimpleToast(msg: tr("msgInfoAddedSuccess"),type: ToastType.success);
        AutoRouter.of(context).pop(result);
      }
    }
  }


  LocationEntity? locationEntity() {
    BuildContext context = getIt<GlobalContext>().context();
    return context.read<LocationCubit>().state.model ;
  }


  void routeToDetectLocation(BuildContext context)async{
    var result = await AutoRouter.of(context).push( LocationAddressRoute(fromEdit: false));
    if(result != null && result is LocationEntity){
      locationController.text = result.address;
      streetNameController.text = result.fullAddress?.streetAddress ?? "";
      stateNameCtr.text = result.fullAddress?.region ?? "";
      cityNameCtr.text = result.fullAddress?.city ?? "";
    }
  }


  Future<AddAddressParams> _addressParams() async{

    return AddAddressParams(
      address: addressController.text,
      addressType: addressTypeModel!.key,
      // postalCode: postalCodeController.text,
      // postalCode: await getPostalCode(),
      countryId: countryModel?.id,
      stateId: stateNameCtr.text,
      cityId: cityNameCtr.text,
      phone: phoneController.text,
      countryCode: countryCodeCubit.state.data?.callingCode ?? "",
      lat: locationEntity()?.lat ?? 0.0,
      long: locationEntity()?.lng ?? 0.0,
      streetName: streetNameController.text,
      flatNumber: flatNumberController.text,
      buildingName:buildingNameController.text ,
    );
  }
}
