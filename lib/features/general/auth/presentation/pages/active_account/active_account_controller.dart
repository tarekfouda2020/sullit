// ignore_for_file: use_build_context_synchronously

part of 'active_account_imports.dart';

class ActiveAccountController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  String? code;
  final GenericBloc<bool> codeCubit = GenericBloc(false);

  void onComplete(String value) {
    codeCubit.onUpdateData(value.length == 6);
    code = value;
    codeCubit.onUpdateData(true);
  }

  Future<void> setVerifyPhone(
      String phoneOrEmail, BuildContext context, bool isFromForget) async {
    var params = codeVerifyParams(phoneOrEmail);
    if (isFromForget) {
      SetCodeVerify().call(params).then((value) {
        if (value == "success") {
          AutoRouter.of(context)
              .push(ResetPasswordRoute(email: phoneOrEmail, code: code!));
        }
      });
    } else {
      var params = _verifyPhoneParams(phoneOrEmail);
      var result = await SetVerifyPhone().call(params);
      if (result) {
        CustomToast.showSimpleToast(
            msg: tr('phoneVerifiedSuccess'), type: ToastType.success);
        AutoRouter.of(context).pop(true);
      }
    }
  }

  VerifyPhoneParams _verifyPhoneParams(String phone) {
    return VerifyPhoneParams(phone: phone, code: code!);
  }

  CodeVerifyParams codeVerifyParams(String email) {
    return CodeVerifyParams(code: code!, email: email);
  }
}