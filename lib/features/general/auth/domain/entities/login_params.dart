

class LoginParams {
  String? emailOrPhone;
  String? password;
  String? macAddress;

  String? deviceToken;

  LoginParams({
    this.password,
    this.emailOrPhone,
    this.macAddress,
    this.deviceToken,
  });

  Map<String, dynamic> toJson() => {
        "email": emailOrPhone,
        "password": password,
        'mac_address': macAddress,
        "device_token": deviceToken,
      };
}
