import 'dart:io';

class ProfileParams {
  String name;
  String countryCode;
  String phone;

  File? image;

  ProfileParams({
    required this.name,
    required this.countryCode,
    required this.phone,
    required this.image,
  });

  Map<String, dynamic> toJson ()=> {
    "name":name,
    "country_code":countryCode,
    "phone": phone,
    "image": image,
  };
}
