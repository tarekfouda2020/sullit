class LocationEntity {
  double lat;
  double lng;
  String address;

  LocationEntity({this.lat = 0, this.lng = 0, this.address = ""});


  LocationEntity copyWith({
    double? lat,
    double? lng,
    String? address,
  }) {
    return LocationEntity(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
      address: address ?? this.address,
    );
  }

}