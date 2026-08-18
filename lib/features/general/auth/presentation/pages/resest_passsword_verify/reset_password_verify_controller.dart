// ignore_for_file: use_build_context_synchronously

part of 'reset_password_verify_imports.dart';

class RestPasswordVerifyController {
  final GlobalKey<FormState> formKey = GlobalKey();

  late String emailAdres;

  RestPasswordVerifyController(String email) {
    emailAdres = email;
  }

  final TextEditingController code = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmPasswordCubit = GenericBloc(false);

  Future<void> onPressConfirm(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var params = _params();
      var result = await SetVerifyResetPassword().call(params);
      if (result != null) {
        CustomToast.showSimpleToast(msg: result, type: ToastType.success);
        AutoRouter.of(context).replaceAll([const LoginRoute()]);
      }
    }
  }

  VerifyResetPasswordParams _params() {
    return VerifyResetPasswordParams(
        code: code.text,
        email: emailAdres,
        password: password.text,
        confirmPassword: confirmPassword.text);
  }
}
