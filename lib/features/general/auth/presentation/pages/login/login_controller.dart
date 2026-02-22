// ignore_for_file: use_build_context_synchronously

part of 'login_imports.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<int> tabsCubit = GenericBloc(0);
  final GenericBloc<bool?> refreshValidationCubit = GenericBloc(null);
  final GenericBloc<int> switchEmailPhoneCubit = GenericBloc(0);

  List<String> tabs = [
    tr("login"),
    tr("register"),
  ];

  List<String> emailAndPhone = [
    tr("emailAddress"),
    tr("mobileNumber"),
  ];

  void onSubmit(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      //btnKey.currentState?.animateForward();
      FocusScope.of(context).unfocus();
      String? deviceId;
      try{
        deviceId =  await getIt<GetDeviceId>().deviceId;
      }catch(e){
        CustomToast.showSimpleToast(msg: "Something get wrong wile get your device info please check connection and try again later",type: ToastType.error);
        return ;
      }
      if(deviceId != null){
        var params = await _setLoginParams(deviceId);
        var result = await SetLogin().call(params);
        //btnKey.currentState?.animateReverse();
        if (result?.key == "success") {
          _cashAndRoute(context, result?.userData, result?.userData?.user);
        }
        if (result?.key == "needActive") {
          _onNeedActive(context);
        }
      }
    }
  }

  void _cashAndRoute(
      BuildContext context, UserData? model, UserDomainModel? data) async {
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
    if (model?.isAdminDiscount == true) {
      showDiscountDialog(context, model!.msgAdminDiscount!);
    }
  }

  void showDiscountDialog(BuildContext context, String discountMsg) {
    Future.delayed(
      const Duration(milliseconds: 100),
      () {
        showDialog(
          context: context,
          builder: (_) => BuildDiscountDialog(msg: discountMsg),
        );
      },
    );
  }

  void _onNeedActive(BuildContext context) {
    CustomToast.showSimpleToast(
      msg: tr('verifyLinkSent'),
      type: ToastType.info,
    );
    AutoRouter.of(context).push(VerifyRegisterRoute(email: email.text));
  }

  Future<LoginParams> _setLoginParams(String deviceId) async {
    String emailOrPhone = switchEmailPhoneCubit.state.data==0
        ? email.text
        : phone.text;
    return LoginParams(
      emailOrPhone: emailOrPhone,
      password: password.text,
      macAddress: deviceId ,
      deviceToken: deviceId,
    );
  }

  Future<bool> onBackPressed(BuildContext context) async {
    AutoRouter.of(context).pushAndPopUntil(
      HomeRoute(index: 0),
      predicate: (route) => false,
    );
    return true;
  }


  void switchEmailAndPhone(int value){
    switchEmailPhoneCubit.onUpdateData(value);
  }



}
