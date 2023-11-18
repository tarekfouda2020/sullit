// ignore_for_file: use_build_context_synchronously

part of 'login_imports.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<int> tabsCubit = GenericBloc(0);

  List<String> tabs = [
    'Login',
    'Register',
  ];

  void onSubmit(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      btnKey.currentState?.animateForward();
      var params = await _setLoginParams();
      var result = await SetLogin().call(params);
      btnKey.currentState?.animateReverse();
      if (result?.key == "success") {
        _cashAndRoute(context, result?.userData?.user);
      }
      if (result?.key == "needActive") {
        _onNeedActive(context);
      }
    }
  }

  void _cashAndRoute(BuildContext context, UserDomainModel? data) async {
    context.read<DeviceCubit>().updateUserAuth(true);
    GlobalState.instance.set("token", data?.token);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("user", json.encode(data?.toJson()));
    context.read<UserCubit>().onUpdateUserData(data!);
    AutoRouter.of(context).push(HomeRoute(index: 0));
    CustomToast.showSimpleToast(
      msg: tr('successLoggedIn'),
      type: ToastType.success,
    );
  }

  void _onNeedActive(BuildContext context) {
    CustomToast.showSimpleToast(
      msg: tr('verifyLinkSent'),
      type: ToastType.info,
    );
    AutoRouter.of(context).push(VerifyRegisterRoute(email: email.text));
  }

  Future<LoginParams> _setLoginParams() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    return LoginParams(
      email: email.text,
      password: password.text,
      macAddress: await getIt<GetDeviceId>().deviceId,
      deviceToken: await messaging.getToken(),
    );
  }

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }
}
