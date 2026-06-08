part of 'seller_profile_imports.dart';

class SellerProfileController {
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmPasswordCubit = GenericBloc(false);
  final GenericBloc<File?> imageCubit = GenericBloc(null);

  final GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController bankAccountNameController = TextEditingController();
  TextEditingController bankAccountNumberController = TextEditingController();
  TextEditingController bankRoutingNumberController = TextEditingController();

  Future<void> getImage(
    BuildContext context,
  ) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }
}
