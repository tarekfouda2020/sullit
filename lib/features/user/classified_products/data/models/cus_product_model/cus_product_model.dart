import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/cus_products_brand_model/cus_products_brand_model.dart';
import 'package:flutter_tdd/features/user/classified_products/data/models/cus_products_cat_model/cus_products_cat_model.dart';
import 'package:flutter_tdd/features/user/classified_products/domain/models/cus_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cus_product_model.freezed.dart';
part 'cus_product_model.g.dart';

@freezed
@immutable
class CusProductModel extends BaseApiModel<CusProduct> with _$CusProductModel {
  const CusProductModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CusProductModel({
    required int id,
    required String name,
    required String unit,
    required String description,
    required String slug,
    CusProductsCatModel? category,
    CusProductsBrandModel? brand,
    @JsonKey(name: 'unit_price') required String unitPrice,
    @JsonKey(name: 'available_status') required bool availableStatus,
    @JsonKey(name: 'admin_status') required String adminStatus,
    required String conditon,
    required String location,
    @JsonKey(name: 'photos_value') required String photosValue,
    required List<String> photos,
    @JsonKey(name: 'thumbnail_img') required String thumbnailImg,
    @JsonKey(name: 'thumbnail_img_value') required String thumbnailImgValue,
    required String pdf,
    @JsonKey(name: 'pdf_value') required String pdfValue,
    required List<String> tags,
    @JsonKey(name: 'video_provider') required String videoProvider,
    @JsonKey(name: 'video_link') required String videoLink,
    @JsonKey(name: 'meta_title') required String metaTitle,
    @JsonKey(name: 'meta_description') required String metaDescription,
    @JsonKey(name: 'meta_img') required String metaImg,
    @JsonKey(name: 'meta_img_value') required String metaImgValue,
  }) = _CusProductModel;

  factory CusProductModel.fromJson(Map<String, dynamic> json) =>
      _$CusProductModelFromJson(json);

  @override
  CusProduct toDomainModel() {
    return CusProduct(
      id: id,
      name: name,
      unit: unit,
      description: description,
      brand: brand?.toDomainModel(),
      category: category?.toDomainModel(),
      slug: slug,
      unitPrice: unitPrice,
      availableStatus: availableStatus,
      adminStatus: adminStatus,
      conditon: conditon,
      location: location,
      photosValue: photosValue,
      photos: photos,
      thumbnailImg: thumbnailImg,
      thumbnailImgValue: thumbnailImgValue,
      pdf: pdf,
      pdfValue: pdfValue,
      tags: tags,
      videoProvider: videoProvider,
      videoLink: videoLink,
      metaTitle: metaTitle,
      metaDescription: metaDescription,
      metaImg: metaImg,
      metaImgValue: metaImgValue,
    );
  }
}
