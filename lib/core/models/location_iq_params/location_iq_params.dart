import 'package:flutter_tdd/core/helpers/location_iq_helper.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationIqParams {
  final LatLng?  latLng;
  final int? maxSuggestionsNumbers;
  final int? min;
  final String? keyword;
  final bool refresh;

  LocationIqParams({
    this.latLng,
    this.maxSuggestionsNumbers = 12,
    this.min = 1,
    this.keyword,
    this.refresh = true,
  });

  String autoCompleteUrl() {
    final String iqKey = LocationIqHelper.instance.key;
    return "?key=$iqKey&q=$keyword&limit=$maxSuggestionsNumbers&dedupe=$min&countrycodes=ae";
  }


  String addressUrl() {
    final String iqKey = LocationIqHelper.instance.key;
    return "?key=$iqKey&lat=${latLng?.latitude}&lon=${latLng?.longitude}&format=json";
  }
}


