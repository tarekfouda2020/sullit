// ignore_for_file: use_build_context_synchronously

part of 'profile_imports.dart';

class ProfileController {
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmPasswordCubit = GenericBloc(false);
  final GlobalKey<CustomButtonState> createBtnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();
  final GenericBloc<File?> imageCubit = GenericBloc(null);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController shopNameController = TextEditingController();
  final TextEditingController shopPhoneController = TextEditingController();
  final TextEditingController shopEmailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  Address? addressModel;

  ProfileController(BuildContext context) {
    getInitialData(context);
  }

  void getInitialData(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    if (user != UserDomainModel()) {
      nameController.text = user?.name ?? "";
      emailController.text = user?.email ?? "";
      phoneController.text = user?.phone ?? "";
      addressController.text = user?.address?.address??"";
    }
  }

  void navigateToAddresses(BuildContext context) async {
    var result = await AutoRouter.of(context).push(const AddressesRoute());
    if (result != null) {
      addressModel = result as Address;
      addressController.text = addressModel?.address ?? "";
    }
  }

  Future<void> getImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }

  Future<void> removeImage() => imageCubit.onUpdateToInitState(null);

  Future<void> setEditProfile(BuildContext context) async {
    print(">>>>>>${addressModel?.toJson()}");
    var user = context.read<UserCubit>().state.model;
    var params = _profileParams();
    if (emailController.text != user!.email) {
      setEditProfileEmail();
    }
    if (addressModel != null) {
      await SetDefaultAddress().call(addressModel!.id!);
    }
    var data = await SetEditProfile().call(params);
    if (data != UserDomainModel()) {
      _cashAndRoute(data, context);
      CustomToast.showSimpleToast(
        msg: "Profile information updated successfully",
        type: ToastType.success,
      );
    }
  }

  Future<void> setEditProfileEmail() async {
    await SetEditProfileEmail().call(emailController.text);
  }

  void _cashAndRoute(UserDomainModel data, BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    UserDomainModel model = data;
    await preferences.setString(
      "user",
      json.encode(model.toJson()),
    );
    if (model.isPhoneActive == false) {
      AutoRouter.of(context).push(
        ActiveAccountRoute(
          phone: phoneController.text,
        ),
      );
    }
    context.read<UserCubit>().onUpdateUserData(model);
  }

  ProfileParams _profileParams() {
    return ProfileParams(
      name: nameController.text,
      phone: phoneController.text,
      image: imageCubit.state.data,
    );
  }
}
