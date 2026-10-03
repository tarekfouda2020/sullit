part of 'change_password_imports.dart';

class ChangePasswordController {
  final bool hasPassword;
  ChangePasswordController({required this.hasPassword});
  final GlobalKey<FormState> formKey = GlobalKey();

  final TextEditingController oldPassword = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final TextEditingController code = TextEditingController();

  final GenericBloc<bool> oldPasswordCubit = GenericBloc(false);
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmPasswordCubit = GenericBloc(false);


  Future<void> changePassword(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      if (hasPassword) {
        SetChangePassword().call(_params()).then((value) {
          if (value.isNotEmpty) {
            CustomToast.showSnakeBar(value);
            AutoRouter.of(context).pop();
          }
        });
      } else {
         PasswordSet().call(
          SetNewPasswordParams(
            code: code.text,
            password: password.text,
            passwordConfirmation: confirmPassword.text,
          ),
        ).then((value) {
          if (value != null && value.isNotEmpty) {
            CustomToast.showSimpleToast(msg:value);
            AutoRouter.of(context).pop();
          }
        });
      }
    }
  }
  ChangePasswordParams _params() {
    return ChangePasswordParams(
        oldPassword: oldPassword.text,
        newPassword: password.text,
        newPasswordConfirm: confirmPassword.text);
  }
}
