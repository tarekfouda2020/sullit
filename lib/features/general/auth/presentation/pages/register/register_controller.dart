// ignore_for_file: use_build_context_synchronously

part of 'register_imports.dart';

class RegisterController {
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  // final GenericBloc<bool> confirmPasswordCubit = GenericBloc(false);
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
    if (formKey.currentState!.validate()) {
      var params = await _registerParams();
      var data = await SetUserRegister().call(params);
      if (data != null) {
        _cashAndRoute(context, data);
      }
    }
  }

  void _cashAndRoute(BuildContext context, UserDomainModel data) async {
    getIt<UserServiceHelper>().updateUserdata(context, data);
    AutoRouter.of(context)
        .push(VerifyRegisterRoute(email: emailController.text));
    getIt<ComparedProductsDb>().deleteEverything();
    CustomToast.showSimpleToast(
      msg: tr('registerVerify'),
      type: ToastType.success,
    );
  }

  Future<UserRegisterParams> _registerParams() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    return UserRegisterParams(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      passwordConfirmation: confirmPasswordController.text,
      macAddress: await getIt<GetDeviceId>().deviceId,
      deviceToken: await messaging.getToken(),
    );
  }
}
