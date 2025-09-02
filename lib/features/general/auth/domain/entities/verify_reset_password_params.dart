class VerifyResetPasswordParams {
  final String code;
  final String email;
  final String password;
  final String confirmPassword;

  VerifyResetPasswordParams({
    required this.code,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });


  Map<String, dynamic> toJson() => {
    "code":code,
    "email": email,
    "password": password,
    "password_confirmation":confirmPassword,
  };

}
