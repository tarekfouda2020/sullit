import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/color_model/color_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_options_model/product_options_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/reviews_model/reviews_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/variant_model/variant_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
@immutable
class ProductModel extends BaseApiModel<Product> with _$ProductModel {
  const ProductModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductModel({
    required int id,
    required String name,
    required String unit,
    @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
    required List<String> images,
    @JsonKey(name: 'is_multiple') required bool isMultiple,
    @JsonKey(name: 'price_high_low_discount')
    required String priceHighLowDiscount,
    @JsonKey(name: 'price_high_low') required String priceHighLow,
    @JsonKey(name: 'has_discount') required bool hasDiscount,
    required String discount,
    @JsonKey(name: 'choice_options')
    required List<ProductOptionsModel> choiceOptions,
    List<ColorModel>? colors,
    @JsonKey(name: "min_qty") required int minQty,
    @JsonKey(name: "currency_symbol") required String currencySymbol,
    VariantModel? variant,
    required List<String> tags,
    @JsonKey(name: 'count_reviews') required int countReviews,
    @JsonKey(name: 'sold_by_type') required String soldByType,
    @JsonKey(name: 'sold_by_name') required String soldByName,
    @JsonKey(name: 'has_vip_offer') required bool hasVipOffer,
    ShopModel? shop,
    List<ReviewsModel>? reviews,
    @JsonKey(name: 'is_resale') required bool isResale,
    @JsonKey(name: 'reseller_id') required int resellerId,
    required CategoryModel? category,
    @JsonKey(name: 'stroked_price') String? strokedPrice,
    @JsonKey(name: 'is_digital') required bool isDigital,
    @JsonKey(name: 'is_wishlist') required bool isWishlist,
    @JsonKey(name: 'main_price') String? mainPrice,
    @JsonKey(name: 'variants') List<VariantModel>? variantsList,
    required num rating,
    required int sales,
    @JsonKey(name: 'seller_id') required int sellerId,
    @JsonKey(name: 'max_qty') required int? maxQntPerOrder,
    BrandModel? brand,
    String? description,
    @JsonKey(name: 'video_provider') String? videoProvider,
    @JsonKey(name: 'video_link') String? videoLink,
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'brand_name') required String brandName,
    @JsonKey(name: 'is_fresh') required bool isFresh,
    @JsonKey(name: 'has_special_loyalty_points')
    required bool hasSpecialLoyaltyPoints,
    @JsonKey(name: 'has_shareholder_discount')
    required bool hasShareholderDiscount,
    @JsonKey(name: 'loyalty_points') required int loyaltyPoints,
    @JsonKey(name: 'prescription_required') required bool prescriptionRequired,
    @JsonKey(name: 'insurance_eligible') required bool insuranceEligible,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  @override
  Product toDomainModel() {
    return Product(
      description: description,
      id: id,
      rating: rating,
      name: name,
      category: category?.toDomainModel(),
      thumbnailImage: thumbnailImage,
      images: images,
      strokedPrice: strokedPrice,
      sellerId: sellerId,
      sales: sales,
      resellerId: resellerId,
      mainPrice: mainPrice,
      hasDiscount: hasDiscount,
      discount: discount,
      brand: brand?.toDomainModel(),
      brandName: brandName,
      categoryName: categoryName,
      countReviews: countReviews,
      currencySymbol: currencySymbol,
      isDigital: isDigital,
      isMultiple: isMultiple,
      isResale: isResale,
      isWishlist: isWishlist,
      minQty: minQty,
      priceHighLow: priceHighLow,
      priceHighLowDiscount: priceHighLowDiscount,
      shop: shop?.toDomainModel(),
      soldByName: soldByName,
      soldByType: soldByType,
      reviews: reviews?.map((e) => e.toDomainModel()).toList(),
      choiceOptions: choiceOptions.map((e) => e.toDomainModel()).toList(),
      colors: colors?.map((e) => e.toDomainModel()).toList(),
      tags: tags,
      videoLink: videoLink,
      videoProvider: videoProvider,
      variant: variant?.toDomainModel(),
      hasVipOffer: hasVipOffer,
      unit: unit,
      loyaltyPoints: loyaltyPoints,
      hasSpecialLoyaltyPoints: hasSpecialLoyaltyPoints,
      isFresh: isFresh,
      maxQnt: maxQntPerOrder,
      variants: variantsList?.map((e) => e.toDomainModel()).toList(),
      insuranceEligible: insuranceEligible,
      prescriptionRequired: prescriptionRequired,
    );
  }
}
