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

import '../models/custom_address_model/custom_address_model.dart';
import '../models/location_iq_place_model/location_iq_place.dart';

@injectable
class LocationService {
  LocationService();

  static LocationService get instance => GetIt.I<LocationService>();



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
    var result = await LocationIqHelper.instance.getAutoCompleteLocations(keyword);
    return result.fold(
      (l) => <LocationIQPlace>[],
      (r) => r,
    );
  }

  Future<LatLng?> getCurrentLocationWithPermission(BuildContext context)async{
    // Use locationWhenInUse for better iOS compatibility
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



}
