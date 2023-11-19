import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/features/general/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/customer_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_product_model.freezed.dart';
part 'customer_product_model.g.dart';

@freezed
@immutable
class CustomerProductModel extends BaseApiModel<CustomerProduct>
    with _$CustomerProductModel {
  const CustomerProductModel._();

  @JsonSerializable(explicitToJson: true)
  const factory CustomerProductModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "unit") required String unit,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "unit_price") required String unitPrice,
    @JsonKey(name: "conditon") required String condition,
    @JsonKey(name: "location") required String location,
    @JsonKey(name: "photos_value") required String photosValue,
    @JsonKey(name: "photos") required List<String> photos,
    @JsonKey(name: "thumbnail_img") required String thumbnailImg,
    @JsonKey(name: "thumbnail_img_value") required String thumbnailImgValue,
    @JsonKey(name: "pdf") required String pdf,
    @JsonKey(name: "pdf_value") required String pdfValue,
    @JsonKey(name: "tags") required List<String> tags,
    @JsonKey(name: "video_provider") required String videoProvider,
    @JsonKey(name: "video_link") required String videoLink,
    @JsonKey(name: "meta_title") required String metaTitle,
    @JsonKey(name: "meta_description") required String metaDescription,
    @JsonKey(name: "meta_img") required String metaImg,
    @JsonKey(name: "meta_img_value") required String metaImgValue,
    @JsonKey(name: "user") UserModel? userData,
    @JsonKey(name: "slug") String? slug,
    @JsonKey(name: "available_status") bool? availableStatus,
    @JsonKey(name: "admin_status") String? adminStatus,
    @JsonKey(name: "category") CategoryModel? category,
    @JsonKey(name: "brand") BrandModel? brand,
  }) = _CustomerProductModel;

  factory CustomerProductModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerProductModelFromJson(json);

  @override
  CustomerProduct toDomainModel() {
    return CustomerProduct(
      name: name,
      id: id,
      description: description,
      videoProvider: videoProvider,
      videoLink: videoLink,
      tags: tags,
      condition: condition,
      location: location,
      metaDescription: metaDescription,
      metaImg: metaImg,
      metaImgValue: metaImgValue,
      metaTitle: metaTitle,
      pdf: pdf,
      pdfValue: pdfValue,
      photos: photos,
      photosValue: photosValue,
      thumbnailImg: thumbnailImg,
      thumbnailImgValue: thumbnailImgValue,
      unit: unit,
      unitPrice: unitPrice,
      userData: userData?.toDomainModel(),
      brand: brand?.toDomainModel(),
      category: category?.toDomainModel(),
      slug: slug,
      adminStatus: adminStatus,
      availableStatus: availableStatus,
    );
  }
}
