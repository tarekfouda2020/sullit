import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/psermission_services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../models/custom_address_model/custom_address_model.dart';

@injectable
class LocationService {
  LocationService();

  static LocationService get instance => GetIt.I<LocationService>();

  static const String _locationIqBaseUrl = 'https://eu1.locationiq.com/v1/';
  static const String _apiKey = 'pk.c31b14b4fcf9a796608be0c167065869';

  final Dio _dio = Dio();


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
    try {
      // const url = '$_locationIqBaseUrl/reverse?';
      final url = '${_locationIqBaseUrl}reverse?key=$_apiKey&lat=${latLng.latitude}&lon=${latLng.longitude}&format=json&';
      // final queryParams = {
      //   'key': _apiKey,
      //   'lat': latLng.latitude.toString(),
      //   'lon': latLng.longitude.toString(),
      //   'format': 'json',
      // };

      final response = await _dio.get(url);

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data as Map<String, dynamic>;
        final addressData = data['address'] as Map<String, dynamic>? ?? {};

        final address = CustomAddressModel(
          countryName: addressData['country'] as String?,
          city: addressData['city'] as String? ?? addressData['town'] as String? ?? addressData['village'] as String?,
          region: addressData['state'] as String? ?? addressData['region'] as String?,
          streetAddress: _buildStreetAddress(addressData),
          countryCode: addressData['country_code'] as String?,
        );

        return address;
      }
      return null;
    } catch (e) {
      log("=======>>>>>>>>>> url  ${'${_locationIqBaseUrl}reverse?key=$_apiKey&lat=${latLng.latitude}&lon=${latLng.longitude}&format=json&'} end ============");
      log("=======>>>>>>>>>> dio error  $e end ============");
      return null;
    }
  }

  String? _buildStreetAddress(Map<String, dynamic> addressData) {
    final parts = <String>[];
    if (addressData['house_number'] != null) {
      parts.add(addressData['house_number'].toString());
    }
    if (addressData['road'] != null) {
      parts.add(addressData['road'].toString());
    }
    return parts.isEmpty ? null : parts.join(' ');
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
