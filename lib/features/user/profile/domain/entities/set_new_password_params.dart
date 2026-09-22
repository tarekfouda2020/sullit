class SetNewPasswordParams {
  String? email;
  String? code;
  String? password;
  String? passwordConfirmation;

  SetNewPasswordParams({
    this.email,
    this.code,
    this.password,
    this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() {
    return {
      if (email != null) "email": email,
      if (code != null) "code": code,
      if (password != null) "password": password,
      if (passwordConfirmation != null)
        "password_confirmation": passwordConfirmation,
    };
  }
}