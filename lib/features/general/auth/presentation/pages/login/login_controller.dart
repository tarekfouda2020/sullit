// ignore_for_file: use_build_context_synchronously

part of 'login_imports.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GenericBloc<bool> passwordCubit = GenericBloc(false);


  void onSubmit(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      btnKey.currentState?.animateForward();
      var params = _setLoginParams();
      // log(params.toJson().toString());
      // return ;
      var result = await SetLogin().call(params);
      _cashAndRoute(context, result?? UserDomainModel());
    }
  }

  void _cashAndRoute(BuildContext context, UserDomainModel data) async {
    context.read<DeviceCubit>().updateUserAuth(true);
    GlobalState.instance.set("token", data.token);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("user", json.encode(data.toJson()));
    context.read<UserCubit>().onUpdateUserData(data);
    btnKey.currentState?.animateReverse();
    AutoRouter.of(context).push(HomeRoute(index: 0));
    CustomToast.showSimpleToast(
      msg: "Register Done Successfully. Please verify and log in to your account",
      type: ToastType.success,
    );
  }

  LoginParams _setLoginParams(){
    return LoginParams(
      email: email.text,
      password: password.text,
    );
  }

  Future<bool> onBackPressed() async {
    SystemNavigator.pop();
    return true;
  }
}
