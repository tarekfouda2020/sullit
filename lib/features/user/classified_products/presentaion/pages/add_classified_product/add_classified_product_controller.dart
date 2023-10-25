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

  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productCategoryController =
      TextEditingController();
  final TextEditingController productBrandController = TextEditingController();
  final TextEditingController conditionController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController productTagController = TextEditingController();
  final TextEditingController productUnitController = TextEditingController();
  final TextEditingController videoUrlController = TextEditingController();
  final TextEditingController metaTitleController = TextEditingController();
  final TextEditingController metaDescController = TextEditingController();
  final TextEditingController unitPrice = TextEditingController();
  final TextEditingController description = TextEditingController();

  final GenericBloc<List<FileDomainModel>> imagesBloc = GenericBloc([]);
  final GenericBloc<FileDomainModel?> thumbnailImageBloc = GenericBloc(null);
  final GenericBloc<FileDomainModel?> metaImageBloc = GenericBloc(null);
  final GenericBloc<FileDomainModel?> pdfBloc = GenericBloc(null);

  VideoProvider? videoProvider;
  CusProductsCat? cusProductsCat;
  CusProductBrand? cusProductsBrand;
  ConditionDomainModel? condition;
  var videoUrlValidator = VideoURLValidator();

  List<ConditionDomainModel> conditions = [
    ConditionDomainModel(name: tr('new'), type: 'new'),
    ConditionDomainModel(name: tr('used'), type: 'used'),
  ];

  Future<void> addClassifiedProducts(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      _onCheckData();
      var params = _addProductParams();
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

  void selectCat(CusProductsCat? model) {
    if (model != null) cusProductsCat = model;
  }

  void selectBrand(CusProductBrand? model) {
    if (model != null) cusProductsBrand = model;
  }

  void selectVideoProvider(VideoProvider? model) {
    videoProvider=null;
    videoUrlController.clear();
    if (model != null) videoProvider = model;
  }

  void selectCondition(ConditionDomainModel? model) {
    if (model != null) condition = model;
  }

  void removeExistedImages(int index) {
    imagesBloc.state.data.removeAt(index);
    imagesBloc.onUpdateData(imagesBloc.state.data);
  }

  void _onCheckData() {
    if (imagesBloc.state.data.isEmpty) {
      CustomToast.showSimpleToast(msg: tr('gallaryImageValidation'));
      return;
    }
    if (thumbnailImageBloc.state.data == null) {
      CustomToast.showSimpleToast(
        msg: tr('thumbnailImageValidation'),
        type: ToastType.error,
      );
      return;
    }
    // if (metaImageBloc.state.data == null) {
    //   CustomToast.showSimpleToast(
    //       msg: tr('selMetaImage'), type: ToastType.error);
    //   return;
    // }
    // if (pdfBloc.state.data == null) {
    //   CustomToast.showSimpleToast(msg: tr('pdfValidation'));
    //   return;
    // }

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
        onAddFiles: (files) => onAddFile(context, imageType, files),
      ),
    );
  }

  void onAddFile(
      BuildContext context, ImageType imageType, List<FileDomainModel> files) {
    if (imageType == ImageType.generalImages) {
      imagesBloc.onUpdateData(files);
    } else if (imageType == ImageType.meta) {
      metaImageBloc.onUpdateData(files.first);
    } else if (imageType == ImageType.thumbnail) {
      thumbnailImageBloc.onUpdateData(files.first);
    } else if (imageType == ImageType.pdf) {
      pdfBloc.onUpdateData(files.first);
    }
    AutoRouter.of(context).pop();
  }

  AddClassifiedProductParams _addProductParams() {
    return AddClassifiedProductParams(
      name: productNameController.text,
      brandId: cusProductsBrand!.id,
      categoryId: cusProductsCat!.id,
      condition: condition!.type,
      description: description.text,
      location: locationController.text,
      metaImg: metaImageBloc.state.data?.id,
      metaTitle: metaTitleController.text,
      metaDescription: metaDescController.text,
      unit: productUnitController.text,
      photos: getImageIds(),
      thumbnailImg: thumbnailImageBloc.state.data!.id,
      videoLink: videoUrlController.text,
      videoProvider: videoProvider?.provider,
      unitPrice: unitPrice.text,
      tags: productTagController.text,
      pdf: pdfBloc.state.data?.id,
    );
  }

  String getImageIds() {
    var allImages = imagesBloc.state.data;
    if (allImages.length > 1) {
      return allImages.map((e) => e.id).join(',');
    } else {
      return allImages.first.id.toString();
    }
  }
}
