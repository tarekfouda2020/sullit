import 'dart:io';

class ProfileParams {
  String name;
  String countryCode;
  String phone;
  String email;
  File? image;

  ProfileParams({
    required this.name,
    required this.countryCode,
    required this.phone,
    required this.image,
    required this.email,
  });

  Map<String, dynamic> toJson ()=> {
    if( name.isNotEmpty) "name":name,
    if(countryCode.isNotEmpty && phone.isNotEmpty) "country_code":countryCode,
    if(countryCode.isNotEmpty && phone.isNotEmpty) "phone": phone,
    if(image!=null) "image": image,
    if(email.isNotEmpty) "email": email,
  };

  void seeData(){
    print("==========<<<<<<<  phone is$phone>>>>>>");
  }
}
