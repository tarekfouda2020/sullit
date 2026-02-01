import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/models/location_iq_params/location_iq_params.dart';
import 'package:flutter_tdd/core/models/location_iq_place_model/location_iq_place.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../errors/failures.dart';
import '../models/custom_address_model/custom_address_model.dart';

class LocationIqHelper {
  LocationIqHelper._();

  static LocationIqHelper instance = LocationIqHelper._();

   final String _locationIqBaseUrl = ApiNames.iqUrl;

   final  String _apiKey = "pk.c31b14b4fcf9a796608be0c167065869";

   String get key => _apiKey;

  final Dio _dio = Dio()
    ..interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
      responseHeader: true,
      error: true,
      request: true,
      requestHeader: true,
      logPrint: (data) => log(data.toString(),
      )));

  Future<Either<Failure,List<LocationIQPlace>>> getAutoCompleteLocations(String keyword) async {
    try {
      LocationIqParams params = _autoCompleteParams(keyword);
      final String url = '$_locationIqBaseUrl${ApiNames.locationAutoComplete}${params.autoCompleteUrl()}';
      final  Response<dynamic> response = await _dio.get(url);
      if (response.statusCode == 200 && response.data != null) {
        final List<dynamic> list = response.data as List<dynamic>;

        final places = list
            .map((e) => LocationIQPlace.fromJson(e as Map<String, dynamic>))
            .toList();
        return Right(places);
      }
      return Left(ServerFailure());
    } catch (error) {
      return Left(ServerFailure());
    }
  }

  Future<CustomAddressModel?> getFullAddress(LatLng latLng, {bool setCountryName = true}) async {
    try {
      LocationIqParams params = _addressParams(latLng);
      final url = '$_locationIqBaseUrl${ApiNames.locationAddress}${params.addressUrl()}';
      // final queryParams = {
      //   'key': _apiKey,
      //   'lat': latLng.latitude.toString(),
      //   'lon': latLng.longitude.toString(),
      //   'format': 'json',
      // };

      // final response = await _dio.get(url, queryParameters: queryParams);
      final response = await _dio.get(url);

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data as Map<String, dynamic>;
        final addressData = data['address'] as Map<String, dynamic>? ?? {};

        final address = CustomAddressModel(
          countryName: setCountryName
              ? addressData['country'] as String?
              : "",
          city: addressData['city'] as String? ??
              addressData['town'] as String? ??
              addressData['village'] as String?,
          region: addressData['state'] as String? ??
              addressData['region'] as String?,
          streetAddress: _buildStreetAddress(addressData),
          countryCode: addressData['country_code'] as String?,
        );

        return address;
      }
      return null;
    } catch (e) {
      log("=======>>>>>>>>>> error is $e end ============");
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


  LocationIqParams _autoCompleteParams(String keyword, {bool refresh = true}) {
    return LocationIqParams(refresh: refresh, keyword: keyword);
  }

  LocationIqParams _addressParams(LatLng latLng, {bool refresh = true}) {
    return LocationIqParams(refresh: refresh, latLng: latLng);
  }


}
