// ignore_for_file: use_build_context_synchronously

part of 'forget_password_imports.dart';

class ForgetPasswordController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final TextEditingController email = TextEditingController();

  void forgetPassword(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      //btnKey.currentState!.animateForward();
      var result = await SetForgetPassword().call(email.text);
      if (result != "") {
        CustomToast.showSimpleToast(msg: result, type: ToastType.success);
        AutoRouter.of(context).push(ResetPasswordRoute(email: email.text));
      }
    }
    btnKey.currentState!.animateReverse();
  }
}
