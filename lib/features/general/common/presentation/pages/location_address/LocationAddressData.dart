// ignore_for_file: use_build_context_synchronously


part of 'LocationAddressImports.dart';

class LocationAddressData {
  final GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();
  final Completer<GoogleMapController> controller = Completer();

  late LocationEntity locationModel;
  final apiKey = "AIzaSyDIBH6mfPQ13UnF9aZtmaUQtuu-mQcxxb0";

  LocationAddressData() {
    locationModel = LocationEntity(lat: 0, lng: 0, address: "");
  }

  void getLocationAddress(BuildContext context) async {
    LatLng loc = LatLng(locationModel.lat,locationModel.lng);
    String address = await getIt<Utilities>().getAddress(loc,context);
    locationModel.address=address;
    context.read<LocationCubit>().onLocationUpdated(locationModel);
  }


  Future<void> getLocation(BuildContext context)async{
    bool permissionGranted = await getIt<PermissionServices>().requestPermission(Permission.location, context);
    var model = context.read<LocationCubit>().state.model;
    if(permissionGranted){
      var currentLocation = await getIt<LocationService>().getCurrentLocation();
      LatLng? loc;
      if(model == null || model.lat == 0.0 || model.lng == 0.0){
        print("currentLocation ====>>> ${currentLocation!.latitude} ${currentLocation.longitude}");
        locationModel = LocationEntity(lat: currentLocation.latitude, lng: currentLocation.longitude);
        loc = LatLng(locationModel.lat, locationModel.lng);
      }else{
        locationModel = LocationEntity(lat: model.lat, lng: model.lng,address: model.address);
        loc = LatLng(model.lat, model.lng);
      }
      context.read<LocationCubit>().onLocationUpdated(locationModel);
      String address = await getIt<Utilities>().getAddress(loc, context);
      locationModel.address = address;
      context.read<LocationCubit>().onLocationUpdated(locationModel);
      moveCameraToLocation(context, loc);
    }else{
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
            zoom: 16.3746,
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
    // context.read<LocationCubit>().onLocationUpdated(locationModel);
    AutoRouter.of(context).pop(locationModel.address);
  }

  Future<void> onPop(BuildContext context) async{
    context.read<LocationCubit>().onLocationUpdated(LocationEntity(
      address: "",
      lat: 0,
      lng: 0,
    ));
    AutoRouter.of(context).pop();
  }
}
