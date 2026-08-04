import '../../../../../core/helpers/helper_methods.dart';

class UserRegisterParams {
  String name;
  String email;
  String password;
  String passwordConfirmation;
  String? macAddress;
  String? deviceToken;

  UserRegisterParams({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    this.macAddress,
    this.deviceToken,
  });

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "password": password,
        "password_confirmation": password,
        'mac_address': macAddress,
        "device_token": deviceToken,
        "device_type": deviceType,
      };

  String get deviceType => HelperMethods.instance.getDeviceType();
}
