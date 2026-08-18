import 'dart:io';

class ProfileParams {
  String? name;
  String? countryCode;
  String? phone;
  String? email;
  File? image;

  ProfileParams({
    required this.name,
    required this.countryCode,
    required this.phone,
    required this.image,
    required this.email,
  });

  Map<String, dynamic> toJson() {
    print("=======>>>>>>>>>>>>>>>>email in params = $email<<<<<<<<<<");
    return {
      if (name != null) "name": name,
      if (countryCode != null && phone != null) "country_code": countryCode,
      if (countryCode != null && phone != null) "phone": phone,
      if (image != null) "image": image,
      if (email != null) "email": email,
    };
  }
}
