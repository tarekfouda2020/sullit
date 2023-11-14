// ignore_for_file: use_build_context_synchronously

part of 'active_account_imports.dart';

class ActiveAccountController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  String? code;
  final GenericBloc<bool> codeCubit = GenericBloc(false);

  void onComplete(String value) {
    codeCubit.onUpdateData(value.length == 6);
    code = value;
  }

  Future<void> setVerifyPhone(String phone, BuildContext context) async {
    var params = _verifyPhoneParams(phone);
    print(">>>>>${params.toJson()}");
    var result = await SetVerifyPhone().call(params);
    if (result) {
      CustomToast.showSimpleToast(
        msg: tr('phoneVerifiedSuccess'),
        type: ToastType.success
      );
      AutoRouter.of(context).pop(true);
    }
  }

  VerifyPhoneParams _verifyPhoneParams(String phone) {
    return VerifyPhoneParams(phone: phone, code: code!);
  }
}