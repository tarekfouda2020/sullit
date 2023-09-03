import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/get_device_id.dart';

class LoginParams {
  String? email;
  String? password;
  String? macAddress ;

  LoginParams({
    this.password,
    this.email,
    this.macAddress
  });

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
    'mac_address': macAddress
      };
}
