part of 'verify_register_imports.dart';

class VerifyRegisterController {
  late String registerEmail;

  final GenericBloc<int> counterCubit = GenericBloc(0);

  VerifyRegisterController(String email) {
    registerEmail = email;
    _onStartTimer();
  }

  Timer? timer;

  void _onStartTimer() {
    counterCubit.onUpdateData(120);
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) => _onEndTimer(timer),
    );
  }

  void _onEndTimer(Timer timer) {
    var newCount = counterCubit.state.data - 1;
    counterCubit.onUpdateData(newCount);
    if (counterCubit.state.data <= 0) {
      timer.cancel();
    }
  }

  void resendCode() async {
    var result = await SetResendRegisterCode().call(registerEmail);
    if (result != "") {
      _onStartTimer();
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

  Future<void> verifyEmail(BuildContext context, String code) async {
    var params = _emailCodeVerifyParams(code);
    getIt<LoadingHelper>().showLoadingDialog();
    await VerifyEmail()(params).then((value) async {
      if (value != null) {
        // await getIt<UserServiceHelper>().updateUserdata(context,value);
        CustomToast.showSimpleToast(
            msg: tr("emailVerify"), type: ToastType.success);
        FacebookEventsHelper.instance.completedRegistration();
        AutoRouter.of(context).replace(const LoginRoute());
      }
      getIt<LoadingHelper>().dismissDialog();
    });
  }

  CodeVerifyParams _emailCodeVerifyParams(String code) {
    return CodeVerifyParams(code: code, email: registerEmail);
  }
}
