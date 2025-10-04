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
  final GenericBloc<Country?> countryCubit = GenericBloc(null );
  final GenericBloc<bool> verifyPhoneCubit = GenericBloc(false);

  // final GenericBloc<bool> verifyEmailCubit = GenericBloc(false);

  Address? addressModel;

  ProfileController(BuildContext context) {
    getInitialData(context);
  }

  Future<void> getInitialData(BuildContext context) async {
    var user = context.read<UserCubit>().state.model;
    if (user != UserDomainModel()) {
      nameController.text = user?.name ?? "";
      emailController.text = user?.email ?? "";
      phoneController.text = user?.phone ?? "";
      await _initializeCountryFromUser(context, user);
      addressModel = user?.address;
      addressController.text = user?.address?.address ?? "";
      verifyPhoneCubit.onUpdateData(user?.isPhoneActive ?? false);
    }
  }

  Future<void> _initializeCountryFromUser(BuildContext context, UserDomainModel? user) async {
    if (user?.countryCode != null && user!.countryCode!.isNotEmpty) {
      try {
        final country = await CountryPickerHelper.getCountryByCallingCode(context, user.countryCode!);
        if (country != null) {
          countryCubit.onUpdateData(country);
        } else {
          countryCubit.onUpdateData(CountryPickerHelper.defaultCountrySync());
        }
      } catch (e) {
        countryCubit.onUpdateData(CountryPickerHelper.defaultCountrySync());
      }
    } else {
      countryCubit.onUpdateData(CountryPickerHelper.defaultCountrySync());
    }
  }

  // void showCountryCode(BuildContext context) async {
  //   Country? data = await showCountryPickerDialog(
  //     context,
  //     cornerRadius: 3,
  //   );
  //   if (data != null) {
  //     countryCubit.onUpdateData(data);
  //     phoneController.clear();
  //   }
  // }

  void navigateToAddresses(BuildContext context) async {
    var result = await AutoRouter.of(context).push( AddressesRoute());
    if (result != null) {
      addressModel = result as Address;
      addressController.text = addressModel?.address ?? "";
    }
  }

  void showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const BuildDeleteDialog();
      },
    );
  }

  Future<void> getImage(BuildContext context) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }

  Future<void> removeImage() => imageCubit.onUpdateToInitState(null);

  bool isDataChanged(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    if (nameController.text != user!.name ||
        emailController.text != user.email ||
        phoneController.text != user.phone ||
        isAddressChanged(context) ||
        isImageChanged()) {
      return true;
    } else {
      return false;
    }
  }

  bool isImageChanged() {
    if (imageCubit.state is GenericUpdateState) {
      return true;
    } else {
      return false;
    }
  }

  bool isEmailChanged(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    if (emailController.text != user!.email) {
      return true;
    } else {
      return false;
    }
  }
  bool isNameChanged(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    if (nameController.text != user!.name) {
      return true;
    } else {
      return false;
    }
  }

  bool isAddressChanged(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    if (addressModel?.id != user!.address?.id) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> setEditProfile(BuildContext context) async {
    if (isDataChanged(context)) {
      var params = _profileParams(context);
      // if (isEmailChanged(context)) {
      //   await SetEditProfileEmail().call(emailController.text);
      //   CustomToast.showSimpleToast(
      //     msg: tr("verifyEmailMsg"),
      //     type: ToastType.success,
      //   );
      // }
      // if (isAddressChanged(context)) {
      //   if (addressModel!.isActive == true) {
      //     await SetDefaultAddress().call(addressModel!.id!);
      //   } else {
      //     CustomToast.showSimpleToast(
      //       msg: tr("verifyAddress"),
      //       type: ToastType.error,
      //     );
      //     return;
      //   }
      // }
      if(nameController.text.isNotEmpty && nameController.text.validateName() != null){
        CustomToast.showSnakeBar(
          tr("validateName"),
          type: ToastType.error,
        );
        return ;
      }
      if(emailController.text.isNotEmpty && emailController.text.validateEmail() != null){
        CustomToast.showSnakeBar(
          tr("mailValidation"),
          type: ToastType.error,
        );
        return ;
      }
      if(!isPhoneValid()){
        CustomToast.showSnakeBar(
           tr("phoneValidation"),
          type: ToastType.error,
        );
        return ;
      }
      var data = await SetEditProfile().call(params);
      if (data != null) {
        _cashAndRoute(data, context);
      }
    } else {
      CustomToast.showSimpleToast(
        msg: tr('noDataChanged'),
        type: ToastType.error,
      );
    }
  }


  bool isPhoneValid(){
    if(phoneController.text.isNotEmpty){
      return((countryCubit.state.data?.callingCode ?? "") + (phoneController.text))
          .validatePhone() == null;
    }else{
      return true;
    }

  }


  void onSaveUserData(BuildContext context) async {
    if (context.mounted) {
      var data = await GetProfile().call(true);
      SharedPreferences pref = await SharedPreferences.getInstance();
      UserDomainModel model = data!;
      await pref.setString("user", json.encode(model.toJson()));
      context.read<UserCubit>().onUpdateUserData(data);
    }
  }

  // void onActiveEmail(BuildContext context) async {
  //   await AutoRouter.of(context)
  //       .push(VerifyRegisterRoute(email: emailController.text));
  // }

  void _cashAndRoute(UserDomainModel data, BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    UserDomainModel model = data;
    await preferences.setString("user", json.encode(model.toJson()));
    context.read<UserCubit>().onUpdateUserData(model);
    verifyPhoneCubit.onUpdateData(model.isPhoneActive!);
    CustomToast.showSimpleToast(
      msg: tr('informationUpdatedSuccessfully'),
      type: ToastType.success,
    );
    AutoRouter.of(context).pop();
  }

  void onActivePhone(BuildContext context) async {
    var user = context.read<UserCubit>().state.model;
    var result = await AutoRouter.of(context)
        .push(ActiveAccountRoute(phoneOrEmail: user?.fullPhone ?? ""));
    if (result == true) {
      user?.isPhoneActive = true;
      verifyPhoneCubit.onUpdateData(true);
      context.read<UserCubit>().onUpdateUserData(user!);
    }
  }

  ProfileParams _profileParams(BuildContext context) {
    return ProfileParams(
      name: isNameChanged(context)
          ?nameController.text
          :null,
      countryCode: countryCubit.state.data?.callingCode ,
      phone: isPhoneValid()
          ? phoneController.text
          :null,
      image: isImageChanged()
          ?imageCubit.state.data
          :null,
      email: isEmailChanged(context)
          ?emailController.text
          :null,
    );
  }


  void logOut(BuildContext context) {
    context.read<CountCubit>().onUpdateCount(0, 0);
    getIt<AuthHelper>().onLogOut(context);
  }

}
