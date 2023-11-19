// ignore_for_file: avoid_dynamic_calls

class AddAddressParams {
  String address;
  String postalCode;
  int countryId;
  int stateId;
  int cityId;
  String phone;
  String countryCode;
  double lat;
  double long;

  AddAddressParams({
    required this.address,
    required this.postalCode,
    required this.countryId,
    required this.stateId,
    required this.cityId,
    required this.phone,
    required this.countryCode,
    required this.lat,
    required this.long,
  });

  Map<String, dynamic> toJson() => {
        "address": address,
        "postal_code": postalCode,
        "country_id": countryId,
        "state_id": stateId,
        "city_id": cityId,
        "phone": phone,
        "country_code": countryCode,
        "latitude": lat,
        "longitude": long
      };

  bool isSuccess(json) => json["key"] == "success";
}
