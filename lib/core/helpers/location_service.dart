import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/psermission_services.dart';
import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

@injectable
class LocationService {
  LocationService();

  static LocationService get instance => GetIt.I<LocationService>();

  Future<String> getAddress(LatLng latLng) async {
    GeoCode geoCode = GeoCode(apiKey: "554640628686038400400x13810");
    try {
      var address = await geoCode.reverseGeocoding(latitude: latLng.latitude, longitude: latLng.longitude);
      var data = "${address.countryName??""}  ${address.city??""}  ${address.region??""}  ${address.streetAddress??""}";
      return data;
    } catch (e) {
      return "";
    }
  }

  Future<LatLng?> getCurrentLocationWithPermission(BuildContext context)async{
    bool locationPermission = await getIt<PermissionServices>().requestPermission(Permission.location, context);
   if(locationPermission){
     final Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
     return LatLng(position.latitude, position.longitude);
   }else{
     return null;
   }
  }


  Future<LatLng?> getCurrentLocation()async{
    return Geolocator.getCurrentPosition().then((value) => LatLng(value.latitude, value.longitude)) ;
  }

  Future<Address?> getFullAddress(LatLng latLng,) async {
    GeoCode geoCode = GeoCode(apiKey: "554640628686038400400x13810" );
    try {
      var address = await geoCode.reverseGeocoding(latitude: latLng.latitude, longitude: latLng.longitude);
      // var data = " ${setCountryName ? address.countryName??"" : ""}  ${address.city??""}  ${address.region??""}  ${address.streetAddress??""}";
    print("=========>>>>> address${address.city}<<<<<<<<,=========");
    print("=========>>>>> address ${address.region}<<<<<<<<,=========");
    print("=========>>>>> address ${address.streetAddress}<<<<<<<<,=========");
    print("=========>>>>> address ${address.streetNumber}<<<<<<<<,=========");
      return address;
    } catch (e) {
      return null;
    }
  }

}
