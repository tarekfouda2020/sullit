part of 'register_shop_imports.dart';

class RegisterShopController {
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmpasswordCubit = GenericBloc(false);
  final GenericBloc<bool> termCubit = GenericBloc(false);

  final GlobalKey<CustomButtonState> createBtnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController shopNameController = TextEditingController();
  TextEditingController shopAddressController = TextEditingController();
  TextEditingController shopEmailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
}
