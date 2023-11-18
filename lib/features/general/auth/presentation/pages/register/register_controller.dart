part of 'register_imports.dart';

class RegisterController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmPasswordCubit = GenericBloc(false);
  final GenericBloc<bool> termCubit = GenericBloc(false);

  final GlobalKey<CustomButtonState> createBtnKey = GlobalKey();
  final GlobalKey<CustomButtonState> sellerBtnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  Future<void> setUserRegister(BuildContext context) async {
    _termsValidation();
    if (formKey.currentState!.validate()) {
      var params = _registerParams();
      var data = await SetUserRegister().call(params);
      if (data != null) {
        _cashAndRoute(context, data);
      }
    }
  }

  void _cashAndRoute(BuildContext context, UserDomainModel data) async {
    context.read<DeviceCubit>().updateUserAuth(true);
    GlobalState.instance.set("token", data.token);
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("user", json.encode(data.toJson()));
    context.read<UserCubit>().onUpdateUserData(data);
    AutoRouter.of(context).popAndPush(VerifyRegisterRoute(email: emailController.text));
    getIt<ComparedProductsDb>().deleteEverything();
    CustomToast.showSimpleToast(
      msg:tr('registerVerify'),
      type: ToastType.success,
    );
  }

  void _termsValidation() {
    if (!termCubit.state.data) {
      CustomToast.showSimpleToast(
        msg: tr('acceptTerms'),
        type: ToastType.error,
      );
      return;
    }
  }

  UserRegisterParams _registerParams() {
    return UserRegisterParams(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      passwordConfirmation: confirmPasswordController.text,
    );
  }
}
