// ignore_for_file: use_build_context_synchronously

part of 'reset_password_imports.dart';

class ResetPasswordController {
  final GlobalKey<FormState> formKey = GlobalKey();

  final TextEditingController code = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmPasswordCubit = GenericBloc(false);


  ResetPasswordController(String resetEmail) {
    email.text = resetEmail;
  }

  void resetPassword(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var params = _resetPasswordParams();
      var result = await SetResetPassword().call(params);
      if (result != "") {
        CustomToast.showSimpleToast(msg: result, type: ToastType.success);
        AutoRouter.of(context).push(const LoginRoute());
      }
    }

  }

  void resendCode() async {
    var result = await SetResendPasswordCode().call(email.text);
    if (result != "") {
      CustomToast.showSimpleToast(msg: result, type: ToastType.success);
    }
  }

  ResetPasswordParams _resetPasswordParams() {
    return ResetPasswordParams(
      code: code.text,
      email: email.text,
      password: password.text,
      confirmPassword: confirmPassword.text,
    );
  }
}
