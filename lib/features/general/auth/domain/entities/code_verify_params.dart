class CodeVerifyParams {
  String code;
  String email;

  CodeVerifyParams({
    required this.code,
    required this.email,
  });

  Map<String, dynamic> toJson() => {
        "code": code,
        "email": email,
      };
}
