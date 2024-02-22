part of 'verify_register_imports.dart';

class VerifyRegisterController {
  late String registerEmail;

  VerifyRegisterController(String email) {
    registerEmail = email;
  }

  void resendCode() async {
    var result = await SetResendRegisterCode().call(registerEmail);
    if (result != "") {
      CustomToast.showSimpleToast(msg: result, type: ToastType.success);
    }
  }

  Future<bool> onBackPressed(BuildContext context) async {
    AutoRouter.of(context).pushAndPopUntil(
      const LoginRoute(),
      predicate: (route) => false,
    );
    return true;
  }
}
