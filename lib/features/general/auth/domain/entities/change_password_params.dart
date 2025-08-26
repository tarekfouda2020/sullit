
class ChangePasswordParams{

  final String oldPassword;
  final String newPassword;
  final String newPasswordConfirm;


  ChangePasswordParams({
    required this.oldPassword,
    required this.newPassword,
    required this.newPasswordConfirm
});


  Map<String,dynamic> toJson()=>{
    "current_password": oldPassword,
    "password": newPassword,
    "password_confirmation": newPasswordConfirm,
  };

}