// ignore_for_file: avoid_dynamic_calls

class VerifyPhoneParams {
  String phone;

  String code;

  VerifyPhoneParams({
    required this.phone,
    required this.code,
  });

  Map<String, dynamic> toJson() => {
        "phone": phone,
        "code": code,
      };

  bool isSuccess(dynamic data) => data['key'] == 'success';
}
