// ignore_for_file: use_build_context_synchronously

part of 'forget_password_imports.dart';

class ForgetPasswordController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController email = TextEditingController();

  void forgetPassword(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var result = await SetForgetPassword().call(email.text);
      if (result != "") {
        CustomToast.showSimpleToast(msg: result, type: ToastType.success);
        AutoRouter.of(context).push(
           ResetPasswordVerifyRoute(email: email.text),
          // ActiveAccountRoute(phoneOrEmail: email.text,fromForget:true),
        );
      }
    }
  }
}
