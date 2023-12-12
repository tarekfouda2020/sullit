// ignore_for_file: use_build_context_synchronously, prefer_interpolation_to_compose_strings
part of 'edit_classified_product_imports.dart';

class EditClassifiedProductController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GenericBloc<CusProduct?> cusProductBloc = GenericBloc(null);
  final TextEditingController productName = TextEditingController();
  final TextEditingController location = TextEditingController();
  final TextEditingController productTag = TextEditingController();
  final TextEditingController videoLink = TextEditingController();
  final TextEditingController metaTitle = TextEditingController();
  final TextEditingController unit = TextEditingController();
  final TextEditingController metaDescription = TextEditingController();
  final TextEditingController unitPrice = TextEditingController();
  final TextEditingController productDescription = TextEditingController();
  final TextEditingController condition = TextEditingController();

  final GlobalKey<DropdownSearchState> videoProviderDropKey = GlobalKey();
  final GlobalKey<DropdownSearchState> catsDropKey = GlobalKey();
  final GlobalKey<DropdownSearchState> brandDropKey = GlobalKey();
  final GlobalKey<DropdownSearchState> conditionDropKey = GlobalKey();

  final GenericBloc<EditGallaryImages> imagesBloc = GenericBloc(
    EditGallaryImages(
      images: ExitedImages(ids: '', images: []),
      addedImages: [],
    ),
  );
  final GenericBloc<FileDomainModel?> thumbnailImageBloc = GenericBloc(null);
  final GenericBloc<FileDomainModel?> metaImageBloc = GenericBloc(null);
  final GenericBloc<FileDomainModel?> pdfBloc = GenericBloc(null);
  late CusProduct productModel;

  VideoProvider? videoProvider;
  CusProductsCat? cusProductsCat;
  CusProductBrand? cusProductsBrand;
  ConditionDomainModel? productCondition;

  var videoUrlValidator = VideoURLValidator();

  List<ConditionDomainModel> conditions = [
    ConditionDomainModel(name: tr('new'), type: 'new'),
    ConditionDomainModel(name: tr('used'), type: 'used'),
  ];

  EditClassifiedProductController(CusProduct product) {
    productModel = product;
    getClassifiedProduct(product.id, refresh: false);
    getClassifiedProduct(product.id);
  }

  Future<void> getClassifiedProduct(int id, {bool refresh = true}) async {
    var params = _genericParams(id, refresh);
    return await GetClassifiedProduct().call(params).then((value) {
      cusProductBloc.onUpdateData(value);
      _setDefaultData(value!);
    });
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

  Future<void> setUpdateProduct(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var params = _editProductParams();
      print("=====>${params.toJson()}");
      var result = await SetEditCusProduct().call(params);
      if (result!=null) {
        CustomToast.showSimpleToast(msg: tr('productUpdatedSuccess'),type: ToastType.success);
        AutoRouter.of(context).pop(result);
      }
    }
  }

  void _setDefaultData(CusProduct product) {
    productName.text = product.name;
    location.text = product.location;
    productTag.text = product.tags.first;
    videoLink.text = product.videoLink;
    metaTitle.text = product.metaTitle;
    unit.text = product.unit;
    cusProductsBrand = product.brand;
    cusProductsCat = product.category;
    videoProvider = videoItem(product);
    productCondition = conditionItem(product);
    metaDescription.text = product.metaDescription;
    unitPrice.text = product.unitPrice;
    productDescription.text = product.description;
    imagesBloc.state.data.images = exitedImagesList(product);
    imagesBloc.onUpdateData(imagesBloc.state.data);
    thumbnailImageBloc.onUpdateData(thumbnailImageItem(product));
    metaImageBloc.onUpdateData(metaItem(product));
    pdfBloc.onUpdateData(pdfItem(product));
  }

  void selectCondition(ConditionDomainModel? model) {
    if (model != null) productCondition = model;
  }

  void selectBrand(CusProductBrand? model) {
    if (model != null) cusProductsBrand = model;
  }

  void selectCat(CusProductsCat? model) {
    if (model != null) cusProductsCat = model;
  }

  void selectVideoForm(VideoProvider? model) {
    videoProvider = null;
    videoLink.clear();
    if (model != null) videoProvider = model;
  }

  void removeExistedImages(int index) {
    imagesBloc.state.data.addedImages.removeAt(index);
    imagesBloc.onUpdateData(imagesBloc.state.data);
  }

  void showImageDialog({
    String? extension,
    required BuildContext context,
    required FileImageType type,
    required ImageType imageType,
  }) async {
    showDialog(
      context: context,
      builder: (context) => BuildImagesDialog(
        extension: extension,
        type: type,
        imgType: imageType,
        onAddFiles: (files) => onAddFiles(context, files, imageType),
      ),
    );
  }

  void onAddFiles(
      BuildContext context, List<FileDomainModel> files, ImageType imageType) {
    if (imageType == ImageType.generalImages) {
      imagesBloc.state.data.addedImages.addAll(files);
      imagesBloc.onUpdateData(imagesBloc.state.data);
    } else if (imageType == ImageType.meta) {
      metaImageBloc.onUpdateData(files.first);
    } else if (imageType == ImageType.thumbnail) {
      thumbnailImageBloc.onUpdateData(files.first);
    } else if (imageType == ImageType.pdf) {
      pdfBloc.onUpdateData(files.first);
    }
    AutoRouter.of(context).pop();
  }

  String? getAddedImageIds() {
    var addedImages = imagesBloc.state.data.addedImages;
    var addedImagesIds = addedImages.map((e) => e.id).toList().join(',');
    var existedImages = imagesBloc.state.data.images;
    var allImages = [];
    if (addedImages.length > 1) {
      allImages = [addedImagesIds, existedImages.ids];
      return allImages.join(',');
    } else if (addedImages.length == 1) {
      allImages = [addedImages.first.id, existedImages.ids];
      return allImages.join(',');
    } else {
      return existedImages.ids;
    }
  }

  EditClassifiedProductParams _editProductParams() {
    return EditClassifiedProductParams(
      name: productName.text,
      brandId: cusProductsBrand!.id,
      categoryId: cusProductsCat!.id,
      condition: productCondition!.name,
      description: productDescription.text,
      location: location.text,
      metaImg: metaImageBloc.state.data?.id,
      metaTitle: metaTitle.text,
      metaDescription: metaDescription.text,
      unit: unit.text,
      photos: getAddedImageIds(),
      thumbnailImg: thumbnailImageBloc.state.data?.id,
      videoLink: videoLink.text,
      videoProvider: videoProvider?.provider,
      unitPrice: unitPrice.text.replaceAll("د.إ", ""),
      tags: productTag.text,
      pdf: pdfBloc.state.data?.id,
      id: productModel.id,
    );
  }

  GenericParams _genericParams(int id, bool refresh) {
    return GenericParams(
      id: id,
      refresh: refresh,
    );
  }

  VideoProvider? videoItem(CusProduct model) {
    if (model.videoProvider.isNotEmpty) {
      return VideoProvider(
        name: model.videoProvider,
        provider: model.videoProvider,
      );
    } else {
      return null;
    }
  }

  ConditionDomainModel conditionItem(CusProduct model) {
    return ConditionDomainModel(
      name: model.conditon,
      type: model.conditon,
    );
  }

  ExitedImages exitedImagesList(CusProduct model) {
    return ExitedImages(
      images: model.photos,
      ids: model.photosValue,
    );
  }

  FileDomainModel thumbnailImageItem(CusProduct model) {
    return FileDomainModel(
      id: model.thumbnailImgValue != ""
          ? int.parse(model.thumbnailImgValue)
          : 0,
      fileOriginalName: '',
      fileName: '',
      url: model.thumbnailImg,
      fileSize: 0,
      extension: '',
      type: '',
    );
  }

  FileDomainModel metaItem(CusProduct model) {
    return FileDomainModel(
      id: model.metaImgValue != "" ? int.parse(model.metaImgValue) : null,
      fileOriginalName: '',
      fileName: '',
      url: model.metaImg,
      fileSize: 0,
      extension: '',
      type: '',
    );
  }

  FileDomainModel pdfItem(CusProduct model) {
    return FileDomainModel(
      id: model.pdfValue != "" ? int.parse(model.pdfValue) : null,
      fileOriginalName: '',
      fileName: '',
      url: model.pdf,
      fileSize: 0,
      extension: '',
      type: '',
    );
  }
}
