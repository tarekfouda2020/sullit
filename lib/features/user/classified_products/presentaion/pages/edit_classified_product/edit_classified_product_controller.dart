part of 'edit_classified_product_imports.dart';
class EditClassifiedProductController{
  final GenericBloc<File?> thumbnailImageBloc = GenericBloc (null);
  final GenericBloc<File?> metaImageBloc = GenericBloc (null);
  final GenericBloc<EditImagesDomainModel> addedAndExitedImgsBloc = GenericBloc(
    EditImagesDomainModel(
      addedImages: [],
      exitedImages: [],
    ),
  );

  void setImages(BuildContext context) async {
    var images = await getIt<Utilities>().getImages(context);
    if (images != []) {
      addedAndExitedImgsBloc.state.data.addedImages.addAll(images);
      addedAndExitedImgsBloc.onUpdateData(
        addedAndExitedImgsBloc.state.data,
      );
    }
  }

  void showImageDialog(BuildContext context, FileImageType type, ImageType imageType) {
    showDialog(
      context: context,
      builder: (context) => BuildImagesDialog(
        type: type,
        imgType: imageType,
        onAddFiles: (List<FileDomainModel> files) {

        },
      ),
    );
  }

  Future<File?> setThumbnailImage(BuildContext context,) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image!= null) {
      thumbnailImageBloc.onUpdateData(image);
      return image ;
    } else {
      return null;
    }
  }

  Future<File?> setEditMetaImage(BuildContext context,) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image!= null) {
      metaImageBloc.onUpdateData(image);
      return image ;
    } else {
      return null;
    }
  }


  void removeExistedImage(ImageDomainModel item, BuildContext context) async {
    addedAndExitedImgsBloc.state.data.exitedImages.remove(item);
    addedAndExitedImgsBloc.onUpdateData(addedAndExitedImgsBloc.state.data);
    CustomToast.showSimpleToast(
      msg: "Image Deleted Successfully",
      type: ToastType.success,
    );
  }

  void removeAddedImage(File image) {
    addedAndExitedImgsBloc.state.data.addedImages.remove(image);
    addedAndExitedImgsBloc.onUpdateData(addedAndExitedImgsBloc.state.data);
  }

}