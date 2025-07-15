// ignore_for_file: avoid_dynamic_calls

class AddAddressParams {
  String address;
  String addressType;

  // String postalCode;
  int countryId;
  int stateId;
  int cityId;
  String phone;
  String countryCode;
  double lat;
  double long;
  String streetName;
  String buildingName;
  String flatNumber;

  AddAddressParams(
      {required this.address,
      required this.addressType,
      // required this.postalCode,
      required this.countryId,
      required this.stateId,
      required this.cityId,
      required this.phone,
      required this.countryCode,
      required this.lat,
      required this.long,
      required this.streetName,
      required this.buildingName,
      required this.flatNumber});

  Map<String, dynamic> toJson() => {
        "address": address,
        // "postal_code": postalCode,
        "country_id": countryId,
        "state_id": stateId,
        "city_id": cityId,
        "address_type": addressType,
        "phone": phone,
        "country_code": countryCode,
        "latitude": lat,
        "longitude": long,
        "street_name": streetName,
        "building_name": buildingName,
        "flat_number": flatNumber,
        "address_type": addressType,
      };

  bool isSuccess(json) => json["key"] == "success";
}
