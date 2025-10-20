// ignore_for_file: avoid_dynamic_calls

class EditAddressParams {
  int id ;
  String address;
  // String postalCode;
  int? countryId;
  String stateName;
  String cityName;
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
     this.countryId,
    required this.stateName,
    required this.cityName,
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
   if(countryId!=null) "country_id": countryId,
    "state_name": stateName,
    "city_name": cityName,
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