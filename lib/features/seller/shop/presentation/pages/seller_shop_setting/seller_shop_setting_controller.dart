part of 'seller_shop_setting_imports.dart';

class SellerShopSettingController {
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> confirmpasswordCubit = GenericBloc(false);
  final GenericBloc<bool> termCubit = GenericBloc(false);
  final GenericBloc<File?> imageCubit = GenericBloc(null);
  final GenericBloc<List<File>?> imagesCubit = GenericBloc(null);

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
  Future<void> getImage(
    BuildContext context,
  ) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }

  Future<void> getFiles(
    BuildContext context,
  ) async {
    var images = await getIt<Utilities>().getImagesFiles(context);
    if (images.isNotEmpty) {
      imagesCubit.onUpdateData(images);
    }
  }

  void removeGalleryImage(int index) {
    imagesCubit.state.data!.removeAt(index);
    imagesCubit.onUpdateData(imagesCubit.state.data);
  }
}
