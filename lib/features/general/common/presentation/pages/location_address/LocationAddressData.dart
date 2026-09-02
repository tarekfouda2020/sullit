// ignore_for_file: use_build_context_synchronously

part of 'LocationAddressImports.dart';

class LocationAddressData {
  final TextEditingController searchFieldController = TextEditingController();

  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  final Completer<GoogleMapController> controller = Completer();

  final GenericBloc<String> titleBloc = GenericBloc<String>("");

  final GenericBloc<List<LocationIQPlace>> placesCubit =
      GenericBloc<List<LocationIQPlace>>([]);

  late LocationEntity locationModel;
  // final apiKey = "AIzaSyDIBH6mfPQ13UnF9aZtmaUQtuu-mQcxxb0";

  LocationAddressData() {
    placesCubit.onUpdateData([]);
    locationModel = LocationEntity(lat: 0, lng: 0, address: "");
  }

  Future<void> getLocationAddress(BuildContext context) async {
    LatLng loc = LatLng(locationModel.lat, locationModel.lng);
    context.read<LocationCubit>().onLocationUpdated(locationModel);
    String address =
        await getIt<LocationService>().getAddress(loc, setCountryName: false);
    locationModel.address = address;
    titleBloc.onUpdateData(address);
  }

  Future<void> getLocation(BuildContext context) async {
    Permission locationPermission = Permission.locationWhenInUse;
    bool permissionGranted = await getIt<PermissionServices>()
        .requestPermission(locationPermission, context);
    var model = context.read<LocationCubit>().state.model;
    try {
      var currentLocation = await getIt<LocationService>().getCurrentLocation();
      LatLng? loc;
      if (model == null || model.lat == 0.0 || model.lng == 0.0) {
        locationModel = LocationEntity(
            lat: currentLocation!.latitude, lng: currentLocation.longitude);
        loc = LatLng(locationModel.lat, locationModel.lng);
      } else {
        locationModel = LocationEntity(
            lat: model.lat, lng: model.lng, address: model.address);
        loc = LatLng(model.lat, model.lng);
      }
      context.read<LocationCubit>().onLocationUpdated(locationModel);
      moveCameraToLocation(context, loc);
      String address =
          await getIt<LocationService>().getAddress(loc, setCountryName: false);
      locationModel.address = address;
      context.read<LocationCubit>().onLocationUpdated(locationModel);
      titleBloc.onUpdateData(locationModel.address);
    } catch (e) {
      AutoRouter.of(context).pop();
    }
  }

  void moveCameraToLocation(BuildContext context, LatLng location) async {
    if (controller.isCompleted) {
      GoogleMapController gMapController = await controller.future;
      gMapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: location,
            zoom: 17.3746,
          ),
        ),
      );
    }
  }

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),
    );
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  void changeLocation(BuildContext context) async {
    if (locationModel.address.isEmpty) {
      CustomToast.showSimpleToast(msg: tr("selectLocationOnMap"));
      return;
    }
    var location = context.read<LocationCubit>().state.model;
    var latLng = LatLng(location?.lat ?? 0, location?.lng ?? 0);
    var fullAddress = await getIt<LocationService>()
        .getFullAddress(latLng, setCountryName: false);
    if ((fullAddress?.countryCode ?? "").toUpperCase() != "AE") {
      CustomToast.showSimpleToast(msg: tr("countryLocation"));
      return;
    }
    locationModel = LocationEntity(
        address: titleBloc.state.data,
        fullAddress: fullAddress,
        lat: latLng.latitude,
        lng: latLng.longitude);
    //     locationAddressData.locationModel = LocationEntity(
    //       lat: loc.target.latitude,
    //       lng: loc.target.longitude,
    //       address: await getIt<LocationService>().getAddress(loc.target),
    //         fullAddress: await getIt<LocationService>().getFullAddress(loc.target)
    //     );
    AutoRouter.of(context).pop(locationModel);
  }

  void onTapOnMap(BuildContext context, LatLng location) {
    locationModel = LocationEntity(
      lat: location.latitude,
      lng: location.longitude,
    );
    getLocationAddress(context);
  }

  Future<void> onPop(BuildContext context) async {
    context.read<LocationCubit>().onLocationUpdated(LocationEntity(
          address: "",
          lat: 0,
          lng: 0,
        ));
    AutoRouter.of(context).pop();
  }

  Future<void> getPlaces() async {
    if (searchFieldController.text.trim().isNotEmpty) {
      placesCubit.onUpdateToInitState([]);
      var result = await getIt<LocationService>()
          .autoCompletePlaces(searchFieldController.text);
      placesCubit.onUpdateData(result);
      // getIt<LocationService>().autoCompletePlaces(searchFieldController.text,refresh: true).then((value) {
      //   placesCubit.successState(value);
      // },);
    } else {
      placesCubit.onUpdateData([]);
    }
  }

  void onSelectPlace(BuildContext context, LocationIQPlace place) {
    if ((place.lat != null && place.lat?.isNotEmpty == true) &&
        (place.lon != null && place.lon?.isNotEmpty == true)) {
      Navigator.pop(context);
      searchFieldController.text = place.address?.name ?? "";
      var lat = double.parse(place.lat!);
      var long = double.parse(place.lon!);
      titleBloc.onUpdateData(place.displayName ?? "");
      moveCameraToLocation(context, LatLng(lat, long));
    }
  }

  void showPlacesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      enableDrag: false,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return SuggestionsPlacesSheet(controller: this);
      },
    );
  }

  void whileWriting(String value) {
    DebounceHelper.instance.startSearch(
        value: value,
        onSearch: (val) => getPlaces(),
        milliseconds: AppConstants.instance.debounceTimeInBackGround);
  }

  void onSubmitSearch(BuildContext context) {
    FocusScope.of(context).unfocus();
    getPlaces();
  }

  void getDataAfterCameraMove(BuildContext context, LatLng location) {
    DebounceHelper.instance.startSearch(
      value: titleBloc.state.data,
      milliseconds: AppConstants.instance.debounceTimeInBackGround,
      onSearch: (val) {
        onTapOnMap(context, location);
      },
    );
  }
}
