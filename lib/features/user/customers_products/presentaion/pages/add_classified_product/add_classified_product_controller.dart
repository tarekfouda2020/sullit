part of 'add_classified_product_imports.dart';
class AddClassifiedProductsController {
  final GenericBloc<List<File>> imagesBloc = GenericBloc([]);
  final GenericBloc<File?> thumbnailImageBloc = GenericBloc(null);
  final GenericBloc<File?> metaImageBloc = GenericBloc(null);

  Future<void> removeImage(int index, ImageType type) async {
    if(type == ImageType.generalImages){
      imagesBloc.state.data.removeAt(index);
      imagesBloc.onUpdateData(imagesBloc.state.data);
    }else if (type == ImageType.meta) {
      metaImageBloc.onUpdateData(null);
    }else {
      thumbnailImageBloc.onUpdateData(null);
    }

  }

  Future<List<File>> getRequestImages(BuildContext context) async {
    var images = await getIt<Utilities>().getImages(context);
    if (images != []) {
      imagesBloc.state.data.addAll(images);
      imagesBloc.onUpdateData(imagesBloc.state.data);
      return images;
    } else {
      return [];
    }
  }

  Future<File?> getImage(BuildContext context,  ImageType type) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image!= null) {
      updateBloc(type);
      return image ;
    } else {
      return null;
    }
  }
  void showImageDialog(BuildContext context){
    showDialog(context: context, builder: (context) => const BuildImagesDialog(),);
  }
  void  updateBloc (ImageType type) {
    if (type == ImageType.meta){
      metaImageBloc.onUpdateData(metaImageBloc.state.data);
    }else if (type == ImageType.thumbnail){
      thumbnailImageBloc.onUpdateData(metaImageBloc.state.data);
    }
  }

}