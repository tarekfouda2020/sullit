// ignore_for_file: use_build_context_synchronously, prefer_interpolation_to_compose_strings

part of 'edit_classified_product_imports.dart';

class EditClassifiedProductController {
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

  final GenericBloc<EditGallaryImages> imagesBloc = GenericBloc(EditGallaryImages(images: ExitedImages(ids: '', images: []), addedImages: []));
  final GenericBloc<FileDomainModel?> thumbnailImageBloc = GenericBloc(null);
  final GenericBloc<FileDomainModel?> metaImageBloc = GenericBloc(null);
  final GenericBloc<FileDomainModel?> pdf = GenericBloc(null);

  VideoProvider? videoProvider;
  CusProductsCat? cusProductsCat;
  CusProductBrand? cusProductsBrand;
  ConditionDomainModel? productCondition;

  EditClassifiedProductController(int productId) {
    getClassifiedProduct(productId);
  }

  void _setDefaultData(CusProduct product) {
    productName.text = product.name;
    location.text = product.location;
    productTag.text = product.tags.first;
    videoLink.text = product.videoLink;
    metaTitle.text = product.metaTitle;
    unit.text = product.unit;
    selectBrand(product.brand!);
    selectCat(product.category!);
    selectVideoForm(VideoProvider(name: product.videoProvider, provider: product.videoProvider));
    selectCondition(ConditionDomainModel(name: product.conditon, type: product.conditon));
    metaDescription.text = product.metaDescription;
    unitPrice.text = product.unitPrice;
    productDescription.text = product.description;
    imagesBloc.state.data.images = ExitedImages(images: product.photos, ids: product.photosValue);
    imagesBloc.onUpdateData(imagesBloc.state.data);
    thumbnailImageBloc.onUpdateData(
      FileDomainModel(
        id: int.parse(product.thumbnailImgValue),
        fileOriginalName: '',
        fileName: '',
        url: product.thumbnailImg,
        fileSize: 0,
        extension: '',
        type: '',
      ),
    );
    metaImageBloc.onUpdateData(
      FileDomainModel(
        id: int.parse(product.metaImgValue),
        fileOriginalName: '',
        fileName: '',
        url: product.metaImg,
        fileSize: 0,
        extension: '',
        type: '',
      ),
    );
    pdf.onUpdateData(
      FileDomainModel(
        id: int.parse(product.pdfValue),
        fileOriginalName: '',
        fileName: '',
        url: product.pdf,
        fileSize: 0,
        extension: '',
        type: '',
      ),
    );
  }

  Future<void> getClassifiedProduct(int param) async {
    return await GetClassifiedProduct().call(param).then((value) {
      cusProductBloc.onUpdateData(value);
      _setDefaultData(value!);
    });
  }

  void selectCondition(ConditionDomainModel? model) {
    productCondition = model;
  }

  void selectBrand(CusProductBrand model) {
    cusProductsBrand = model;
  }

  void selectCat(CusProductsCat model) {
    cusProductsCat = model;
  }

  void selectVideoForm(VideoProvider? model) {
    videoProvider = model;
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
    ConditionDomainModel(name: 'new', type: 'new'),
    ConditionDomainModel(name: 'Used', type: 'used'),
  ];

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
            imagesBloc.state.data.addedImages.addAll(files);
            imagesBloc.onUpdateData(imagesBloc.state.data);
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

  Future<void> setUpdateProduct(BuildContext context, int id) async {
    var params = _editProductParams(id);
    var result = await SetEditCusProduct().call(params);
    if (result) {
      CustomToast.showSimpleToast(msg: 'Product has been updated successfully');
      AutoRouter.of(context).pop(true);
    }
  }

  EditClassifiedProductParams _editProductParams(int id) {
    return EditClassifiedProductParams(
      name: productName.text,
      brandId: cusProductsBrand!.id,
      categoryId: cusProductsCat!.id,
      condition: productCondition!.name,
      description: productDescription.text,
      location: location.text,
      metaImg: metaImageBloc.state.data!.id,
      metaTitle: metaTitle.text,
      metaDescription: metaDescription.text,
      unit: unit.text,
      photos:  getAddedImageIds(),
      thumbnailImg: thumbnailImageBloc.state.data!.id,
      videoLink: videoLink.text,
      videoProvider: videoProvider!.provider,
      unitPrice: int.parse(unitPrice.text.split('د.إ')[1].split('.').first),
      tags: productTag.text,
      pdf: pdf.state.data!.id,
      id: id,
    );
  }

  String? getAddedImageIds() {
    if (imagesBloc.state.data.addedImages.length > 1) {
      return imagesBloc.state.data.addedImages.map((e) => e.id).join(',')+',${imagesBloc.state.data.images.ids}';
    } else if (imagesBloc.state.data.addedImages.length == 1) {
      return '${imagesBloc.state.data.addedImages.first.id},${imagesBloc.state.data.images.ids}';
    } else {
      return imagesBloc.state.data.images.ids;
    }
  }


}