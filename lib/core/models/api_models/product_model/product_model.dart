import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/brand_model/brand_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/color_model/color_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/product_options_model/product_options_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/reviews_model/reviews_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_card_model/shop_card_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/variant_model/variant_model.dart';
import 'package:flutter_tdd/features/user/products/domain/behavior/product_type.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/normal_product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/pharmacy_product.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/pharmacy_branch_model/pharmacy_branch_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../features/user/products/data/models/product_options/product_options.dart';

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
    required String type,
    @JsonKey(name: 'thumbnail_image') required String thumbnailImage,
    required List<String> images,
    @JsonKey(name: 'is_multiple') required bool isMultiple,
    @JsonKey(name: 'price_high_low_discount') required String priceHighLowDiscount,
    @JsonKey(name: 'price_high_low') required String priceHighLow,
    @JsonKey(name: 'has_discount') required bool hasDiscount,
    required String discount,
    @JsonKey(name: 'product_options') List<ProductOption>? productOptions,
    @JsonKey(name: 'choice_options') required List<ProductOptionsModel> choiceOptions,
    List<ColorModel>? colors,
    @JsonKey(name: "min_qty") required int minQty,
    @JsonKey(name: "currency_symbol") required String currencySymbol,
    VariantModel? variant,
    required List<String> tags,
    @JsonKey(name: 'count_reviews') required int countReviews,
    @JsonKey(name: 'sold_by_type') required String soldByType,
    @JsonKey(name: 'sold_by_name') required String soldByName,
    @JsonKey(name: 'has_vip_offer') required bool hasVipOffer,
    ShopCardModel? shop,
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
    @JsonKey(name: 'has_special_loyalty_points') required bool hasSpecialLoyaltyPoints,
    @JsonKey(name: 'has_shareholder_discount') required bool hasShareholderDiscount,
    @JsonKey(name: 'loyalty_points') required int loyaltyPoints,
    @JsonKey(name: 'prescription_required') required bool prescriptionRequired,
    @JsonKey(name: 'insurance_eligible') required bool insuranceEligible,
    PharmacyBranchModel? branch,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  @override
  Product toDomainModel() {
    switch (ProductType.fromString(type)) {
      case ProductType.pharmacy:
        return _fillCommon(PharmacyProduct(branch: branch?.toDomainModel()));
      case ProductType.general:
        return _fillCommon(NormalProduct(branch: branch?.toDomainModel()));
    }
  }

  T _fillCommon<T extends Product>(T p) {
    p.id = id;
    p.name = name;
    p.type = type;
    p.unit = unit;
    p.thumbnailImage = thumbnailImage;
    p.images = images;
    p.isMultiple = isMultiple;
    p.priceHighLowDiscount = priceHighLowDiscount;
    p.priceHighLow = priceHighLow;
    p.hasDiscount = hasDiscount;
    p.discount = discount;
    p.strokedPrice = strokedPrice;
    p.mainPrice = mainPrice;
    p.choiceOptions = choiceOptions.map((e) => e.toDomainModel()).toList();
    p.colors = colors?.map((e) => e.toDomainModel()).toList();
    p.minQty = minQty;
    p.currencySymbol = currencySymbol;
    p.variant = variant?.toDomainModel();
    p.variants = variantsList?.map((e) => e.toDomainModel()).toList();
    p.tags = tags;
    p.rating = rating;
    p.sales = sales;
    p.isDigital = isDigital;
    p.productOptions = productOptions?.map((e) => e.toDomainModel()).toList();

    p.isWishlist = isWishlist;
    p.sellerId = sellerId;
    p.countReviews = countReviews;
    p.soldByType = soldByType;
    p.soldByName = soldByName;
    p.shop = shop?.toDomainModel();
    p.reviews = reviews?.map((e) => e.toDomainModel()).toList();
    p.isResale = isResale;
    p.resellerId = resellerId;
    p.category = category?.toDomainModel();
    p.brand = brand?.toDomainModel();
    p.description = description;
    p.videoProvider = videoProvider;
    p.videoLink = videoLink;
    p.categoryName = categoryName;
    p.brandName = brandName;
    p.hasVipOffer = hasVipOffer;
    p.isFresh = isFresh;
    p.loyaltyPoints = loyaltyPoints;
    p.hasSpecialLoyaltyPoints = hasSpecialLoyaltyPoints;
    p.hasShareholderDiscount = hasShareholderDiscount;
    p.maxQnt = maxQntPerOrder;
    p.prescriptionRequired = prescriptionRequired;
    p.insuranceEligible = insuranceEligible;
    p.branch = branch?.toDomainModel();
    return p;
  }
}
