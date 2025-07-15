part of 'LocationWidgetsImports.dart';

class BuildGoogleMapView extends StatelessWidget {
  final LocationAddressData locationAddressData;

  const BuildGoogleMapView({super.key, required this.locationAddressData});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        print("=======================0000000=======>>>> state ${state.model?.lat}");
        print("=======================0000000=======>>>> state ${state.model?.lng}");
        return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              child: GoogleMap(
                  mapType: MapType.normal,
                  // markers: _markers,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(state.model!.lat, state.model!.lng),
                    zoom: 16.3746,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    locationAddressData.controller.complete(controller);
                  },
                  myLocationButtonEnabled: true,
                  myLocationEnabled: true,
                  rotateGesturesEnabled: true,
                  scrollGesturesEnabled: true,
                  trafficEnabled: true,
                  zoomControlsEnabled: true,
                  tiltGesturesEnabled: true,
                  compassEnabled: true,
                  indoorViewEnabled: true,
                  buildingsEnabled: true,
                  mapToolbarEnabled: true,
                  zoomGesturesEnabled: true,
                  onCameraIdle: () {
                    locationAddressData.getLocationAddress(context);
                  },
                  onTap: (location) {
                    locationAddressData.locationModel = LocationEntity(
                      lat: location.latitude,
                      lng: location.longitude,
                      address: "",
                    );
                    locationAddressData.getLocationAddress(context);
                  },
                  onCameraMove: (loc) {
                    if(loc.target.latitude > 0 && loc.target.longitude > 0){
                      locationAddressData.locationModel = LocationEntity(
                        lat: loc.target.latitude,
                        lng: loc.target.longitude,
                        address: "",
                      );
                    }
                  }
              ),
            ),
            ImageIcon(
              const AssetImage(Res.marker),
              size: 50,
              color: context.colors.secondary,
            ),
          ],
        );
      },
    );
  }
}
