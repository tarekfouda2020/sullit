import 'dart:developer';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/location_iq_helper.dart';
import 'package:flutter_tdd/core/helpers/psermission_services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/custom_address_model/custom_address_model.dart';
import '../models/location_iq_place_model/location_iq_place.dart';
import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';

@lazySingleton
class LocationService {
  LocationService();

  static LocationService get instance => GetIt.I<LocationService>();

  LatLng? _userLocation;

  LatLng? get userLocation => _userLocation;

  void setUserLocation(LatLng location) {
    _userLocation = location;
    GlobalState.instance.set(GlobalStateKeys.userLocation, location);
  }



  Future<String> getAddress(LatLng latLng, {bool setCountryName = true}) async {
    try {
      final address = await getFullAddress(latLng, setCountryName: setCountryName);
      if (address == null) {
        return "";
      }
      var data = " ${setCountryName ? address.countryName ?? "" : ""}  ${address.city ?? ""}  ${address.region ?? ""}  ${address.streetAddress ?? ""}";
      return data;
    } catch (e) {
      log("=======>>>>>>>>>> error is $e end ============");
      return "";
    }
  }

  Future<CustomAddressModel?> getFullAddress(LatLng latLng, {bool setCountryName = true}) async {
   return LocationIqHelper.instance.getFullAddress(latLng,setCountryName: setCountryName);
  }

  Future<List<LocationIQPlace>> autoCompletePlaces(String keyword, {bool refresh = true}) async {
    var result = await LocationIqHelper.instance.getAutoCompleteLocations(keyword,refresh: refresh);
    return result.fold(
      (l) => <LocationIQPlace>[],
      (r) => r,
    );
  }

  Future<bool> requestWhenInUsePermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always;
  }

  Future<LatLng?> getCurrentLocationWithPermission(BuildContext context)async{
     await getIt<PermissionServices>().requestPermission(Permission.locationWhenInUse, context);
    try {
      final Position position = await Geolocator.getCurrentPosition(locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high
      ));
      return LatLng(position.latitude, position.longitude);
    } catch (e) {
      return null;
    }
  }


  Future<LatLng?> getCurrentLocation()async{
    return Geolocator.getCurrentPosition().then((value) => LatLng(value.latitude, value.longitude)) ;
  }

  LatLng? cachedUserLocation() {
    final cached = GlobalState.instance.get(GlobalStateKeys.userLocation);
    if (cached is LatLng) return cached;
    return _userLocation;
  }

  Future<LatLng?> resolveUserLocation({BuildContext? context}) async {
    final status = await Permission.locationWhenInUse.status;
    final granted = status.isGranted || status.isLimited;
    final cached = cachedUserLocation();

    if (granted) {
      if (cached != null) {
        setUserLocation(cached);
        GlobalState.instance.set(GlobalStateKeys.userLocation, cached);
        return cached;
      }
      try {
        final loc = await getCurrentLocation();
        if (loc != null) {
          setUserLocation(loc);
          GlobalState.instance.set(GlobalStateKeys.userLocation, loc);
        }
        return loc;
      } catch (_) {
        return null;
      }
    }

    if (context == null) return cached;
    final loc = await getCurrentLocationWithPermission(context);
    if (loc != null) {
      setUserLocation(loc);
      GlobalState.instance.set(GlobalStateKeys.userLocation, loc);
    }
    return loc;
  }


  Future<void> openGoogleMapsNavigation({
    required double latitude,
    required double longitude,
  }) async {
    final Uri uri = Uri.parse(
        'https://www.google.com/maps/dir/?api=1&destination=$latitude,$longitude&travelmode=driving');

    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }


}
