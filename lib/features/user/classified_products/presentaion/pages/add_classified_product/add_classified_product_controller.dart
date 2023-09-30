// ignore_for_file: use_build_context_synchronously

part of 'add_classified_product_imports.dart';
class AddClassifiedProductsController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<FormState> generalFormKey = GlobalKey();
  final GlobalKey<FormState> videoFormKey = GlobalKey();
  final GlobalKey<FormState> metaFormKey = GlobalKey();
  final GlobalKey<FormState> priceFormKey = GlobalKey();
  final GlobalKey<FormState> descriptionFormKey = GlobalKey();

  final GlobalKey<DropdownSearchState> videoProviderDropKey = GlobalKey();
  final GlobalKey<DropdownSearchState> catsDropKey = GlobalKey();
  final GlobalKey<DropdownSearchState> brandDropKey = GlobalKey();
  final GlobalKey<DropdownSearchState> conditionDropKey = GlobalKey();

  TextEditingController productNameController = TextEditingController();
  TextEditingController productCategoryController = TextEditingController();
  TextEditingController productBrandController = TextEditingController();
  TextEditingController conditionController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController productTagController = TextEditingController();
  TextEditingController productUnitController = TextEditingController();
  TextEditingController videoUrlController = TextEditingController();
  TextEditingController metaTitleController = TextEditingController();
  TextEditingController metaDescController = TextEditingController();
  TextEditingController unitPrice = TextEditingController();
  TextEditingController description = TextEditingController();

  final GenericBloc<List<FileDomainModel>> imagesBloc = GenericBloc([]);
  final GenericBloc<FileDomainModel?> thumbnailImageBloc = GenericBloc(null);
  final GenericBloc<FileDomainModel?> metaImageBloc = GenericBloc(null);
  final GenericBloc<FileDomainModel?> pdf = GenericBloc(null);

  VideoProvider? videoProvider;
  CusProductsCat? cusProductsCat;
  CusProductBrand? cusProductsBrand;
  ConditionDomainModel? condition;
  var videoUrlValidator = VideoURLValidator();

  void selectBrand(CusProductBrand model) {
    cusProductsBrand = model;
  }

  void selectCat(CusProductsCat model) {
    cusProductsCat = model;
  }

  void selectVideoProvider(VideoProvider? model) {
    videoProvider = model;
  }

  void selectCondition(ConditionDomainModel? model) {
    condition = model;
  }

  Future<List<CusProductsCat>> getCats({bool param = false}) async {
    var data = await GetCusProductsCats().call(param);
    return data;
  }

  Future<List<CusProductBrand>> getBrands({bool param = false}) async {
    var data = await GetCusProductsBrands().call(param);
    return data;
  }

  Future<List<VideoProvider>> getVideoProviders({bool param = false}) async {
    var data = await GetVideoProviders().call(param);
    return data;
  }

  List<ConditionDomainModel> conditions = [
    ConditionDomainModel(name: tr('new'), type: 'new'),
    ConditionDomainModel(name: tr('used'), type: 'used'),
  ];

  Future<void> removeImage(int index, ImageType type) async {
    if (type == ImageType.generalImages) {
      imagesBloc.state.data.removeAt(index);
      imagesBloc.onUpdateData(imagesBloc.state.data);
    } else if (type == ImageType.meta) {
      metaImageBloc.onUpdateData(null);
    } else {
      thumbnailImageBloc.onUpdateData(null);
    }
  }

  Future<File?> getImage(BuildContext context, ImageType type) async {
    var image = await getIt<Utilities>().getImageFile(context);
    if (image != null) {
      updateBloc(type);
      return image;
    } else {
      return null;
    }
  }

  void showImageDialog({
    String? extension,
    required BuildContext context,
    required FileImageType type,
    required ImageType imageType,
  }) {
    showDialog(
      context: context,
      builder: (context) => BuildImagesDialog(
        extension: extension,
        type: type,
        imgType: imageType,
        onAddFiles: (List<FileDomainModel> files) {
          if (imageType == ImageType.generalImages) {
            imagesBloc.onUpdateData(files);
          } else if (imageType == ImageType.meta) {
            metaImageBloc.onUpdateData(files.first);
          } else if (imageType == ImageType.thumbnail) {
            thumbnailImageBloc.onUpdateData(files.first);
          } else if (imageType == ImageType.pdf) {
            pdf.onUpdateData(files.first);
          }
        },
      ),
    );
  }

  void updateBloc(ImageType type) {
    if (type == ImageType.meta) {
      metaImageBloc.onUpdateData(metaImageBloc.state.data);
    } else if (type == ImageType.thumbnail) {
      thumbnailImageBloc.onUpdateData(metaImageBloc.state.data);
    }
  }

  String? validateVideoUrl() {
    if (videoProvider!.provider == 'youtube') {
      bool validate = videoUrlValidator.validateYouTubeVideoURL(
        url: videoUrlController.text,
      );
      if (validate == false) {
        return tr('linkValidation');
      }
    } else if (videoProvider!.provider == 'dailymotion') {
      bool validate = videoUrlValidator.validateDailyMotionVideoURL(
        url: videoUrlController.text,
      );
      if (validate == false) {
        return tr('linkValidation');
      }
    } else if (videoProvider!.provider == 'vimeo') {
      bool validate = videoUrlValidator.validateVimeoVideoURL(
        url: videoUrlController.text,
      );
      if (validate == false) {
        return tr('linkValidation');
      }
    }else{
      return null;
    }
    return null;
  }

  Future<void> addClassifiedProducts(BuildContext context) async {
    if (imagesBloc.state.data.isEmpty) {
      CustomToast.showSimpleToast(
          msg: tr('gallaryImageValidation'));
      return;
    }
    if (pdf.state.data == null) {
      CustomToast.showSimpleToast(msg: tr('pdfValidation'));
      return;
    }
    if (metaImageBloc.state.data == null) {
      CustomToast.showSimpleToast(
          msg: tr('selMetaImage'), type: ToastType.error);
      return;
    }
    if (thumbnailImageBloc.state.data == null) {
      CustomToast.showSimpleToast(
        msg: tr('thumbnailImageValidation'),
        type: ToastType.error,
      );
      return;
    }
    if (formKey.currentState!.validate() &&
        generalFormKey.currentState!.validate()) {
      var params = _addClassifiedProductParams();
      var data = await SetAddClassifiedProducts().call(params);
      if (data) {
        CustomToast.showSimpleToast(
          msg: tr('productAddedSuccess'),
          type: ToastType.success,
        );
        AutoRouter.of(context).push(const ClassifiedProductsRoute());
      }
    }
  }

  AddClassifiedProductParams _addClassifiedProductParams() {
    return AddClassifiedProductParams(
      name: productNameController.text,
      brandId: cusProductsBrand!.id,
      categoryId: cusProductsCat!.id,
      condition: condition!.type,
      description: description.text,
      location: locationController.text,
      metaImg: metaImageBloc.state.data!.id,
      metaTitle: metaTitleController.text,
      metaDescription: metaDescController.text,
      unit: productUnitController.text,
      photos: getImageIds(),
      thumbnailImg: thumbnailImageBloc.state.data!.id,
      videoLink: videoUrlController.text,
      videoProvider: videoProvider!.provider,
      unitPrice: int.parse(unitPrice.text),
      tags: productTagController.text,
      pdf: pdf.state.data!.id,
    );
  }

  String getImageIds() {
    if(imagesBloc.state.data.length > 1){
      return imagesBloc.state.data.map((e) => e.id).join(',');
    }else {
      return imagesBloc.state.data.first.id.toString();
    }
  }
}