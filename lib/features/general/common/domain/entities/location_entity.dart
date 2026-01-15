import 'package:flutter_tdd/core/models/custom_address_model/custom_address_model.dart';

class LocationEntity {
  double lat;
  double lng;
  String address;
  final CustomAddressModel? fullAddress;
  LocationEntity({this.lat = 0, this.lng = 0, this.address = "", this.fullAddress});


  LocationEntity copyWith({
    double? lat,
    double? lng,
    String? address,
    CustomAddressModel? fullAddress,
  }) {
    return LocationEntity(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      address: address ?? this.address,
      fullAddress: fullAddress ?? this.fullAddress
    );
  }


  Map<String,dynamic> toJson()=>{
    "lat":lat,
    "lng":lng,
    "address":address,
    "full_address" : fullAddress?.toJson()
  };



}