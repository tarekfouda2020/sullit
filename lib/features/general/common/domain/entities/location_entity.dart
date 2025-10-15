import 'package:geocode/geocode.dart';

class LocationEntity {
  double lat;
  double lng;
  String address;
final Address? fullAddress;
  LocationEntity({this.lat = 0, this.lng = 0, this.address = "",this.fullAddress});


  LocationEntity copyWith({
    double? lat,
    double? lng,
    String? address,
    Address? fullAddress,
  }) {
    return LocationEntity(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      address: address ?? this.address,
      fullAddress: fullAddress ?? this.fullAddress
    );
  }

}