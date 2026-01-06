part of 'LocationWidgetsImports.dart';

class BuildGoogleMapView extends StatelessWidget {
  final LocationAddressData locationAddressData;
  const BuildGoogleMapView({super.key, required this.locationAddressData, });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationCubit, LocationState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
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
                  // onTap: (location) async => locationAddressData.onTapOnMap(context, location),
                  onTap: (location)  {
                     locationAddressData.onTapOnMap(context, location);
                    locationAddressData.moveCameraToLocation(context,location);
                  },
                  onCameraMove: (loc) async => locationAddressData.getDataAfterCameraMove(context, loc.target)
              ),
            ),
            PositionedDirectional(
                top: -8,
                start: 0,
                end: 40,
                child: MapSearchFieldWidget(controller: locationAddressData)
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
