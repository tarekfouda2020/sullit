// ignore_for_file: avoid_dynamic_calls

class EditAddressParams {
  int id ;
  String address;
  // String postalCode;
  int countryId;
  int stateId;
  int cityId;
  String phone;
  String countryCode;
  String streetName;
  String buildingName;
  String flatNumber ;
  String? addressType;
  double lat;
  double long;

  EditAddressParams({
    required this.id,
    required this.address,
    // required this.postalCode,
    required this.countryId,
    required this.stateId,
    required this.cityId,
    required this.phone,
    required this.countryCode,
    required this.lat,
    required this.long,
    this.addressType,
    required this.streetName,
    required this.buildingName,
    required this.flatNumber
  });

  Map<String, dynamic> toJson() => {
    "address":  address,
    // "postal_code": postalCode,
    "country_id": countryId,
    "state_id": stateId,
    "city_id": cityId,
    "phone": phone,
    "country_code":countryCode,
    "street_name":streetName,
    "building_name":buildingName,
    "flat_number":flatNumber,
     "address_type":addressType,
    "latitude": lat,
    "longitude": long
  };

  bool isSuccess (json) => json["key"] == "success" ;
}