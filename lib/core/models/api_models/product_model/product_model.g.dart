// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      unit: json['unit'] as String,
      type: json['type'] as String,
      thumbnailImage: json['thumbnail_image'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      isMultiple: json['is_multiple'] as bool,
      priceHighLowDiscount: json['price_high_low_discount'] as String,
      priceHighLow: json['price_high_low'] as String,
      hasDiscount: json['has_discount'] as bool,
      discount: json['discount'] as String,
      choiceOptions: (json['choice_options'] as List<dynamic>)
          .map((e) => ProductOptionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      colors: (json['colors'] as List<dynamic>?)
          ?.map((e) => ColorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      minQty: (json['min_qty'] as num).toInt(),
      currencySymbol: json['currency_symbol'] as String,
      variant: json['variant'] == null
          ? null
          : VariantModel.fromJson(json['variant'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      countReviews: (json['count_reviews'] as num).toInt(),
      soldByType: json['sold_by_type'] as String,
      soldByName: json['sold_by_name'] as String,
      hasVipOffer: json['has_vip_offer'] as bool,
      shop: json['shop'] == null
          ? null
          : ShopModel.fromJson(json['shop'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => ReviewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isResale: json['is_resale'] as bool,
      resellerId: (json['reseller_id'] as num).toInt(),
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      strokedPrice: json['stroked_price'] as String?,
      isDigital: json['is_digital'] as bool,
      isWishlist: json['is_wishlist'] as bool,
      mainPrice: json['main_price'] as String?,
      variantsList: (json['variants'] as List<dynamic>?)
          ?.map((e) => VariantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: json['rating'] as num,
      sales: (json['sales'] as num).toInt(),
      sellerId: (json['seller_id'] as num).toInt(),
      maxQntPerOrder: (json['max_qty'] as num?)?.toInt(),
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      description: json['description'] as String?,
      videoProvider: json['video_provider'] as String?,
      videoLink: json['video_link'] as String?,
      categoryName: json['category_name'] as String,
      brandName: json['brand_name'] as String,
      isFresh: json['is_fresh'] as bool,
      hasSpecialLoyaltyPoints: json['has_special_loyalty_points'] as bool,
      hasShareholderDiscount: json['has_shareholder_discount'] as bool,
      loyaltyPoints: (json['loyalty_points'] as num).toInt(),
      prescriptionRequired: json['prescription_required'] as bool,
      insuranceEligible: json['insurance_eligible'] as bool,
      branch: json['branch'] == null
          ? null
          : PharmacyBranchModel.fromJson(
              json['branch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
      'type': instance.type,
      'thumbnail_image': instance.thumbnailImage,
      'images': instance.images,
      'is_multiple': instance.isMultiple,
      'price_high_low_discount': instance.priceHighLowDiscount,
      'price_high_low': instance.priceHighLow,
      'has_discount': instance.hasDiscount,
      'discount': instance.discount,
      'choice_options': instance.choiceOptions.map((e) => e.toJson()).toList(),
      'colors': instance.colors?.map((e) => e.toJson()).toList(),
      'min_qty': instance.minQty,
      'currency_symbol': instance.currencySymbol,
      'variant': instance.variant?.toJson(),
      'tags': instance.tags,
      'count_reviews': instance.countReviews,
      'sold_by_type': instance.soldByType,
      'sold_by_name': instance.soldByName,
      'has_vip_offer': instance.hasVipOffer,
      'shop': instance.shop?.toJson(),
      'reviews': instance.reviews?.map((e) => e.toJson()).toList(),
      'is_resale': instance.isResale,
      'reseller_id': instance.resellerId,
      'category': instance.category?.toJson(),
      'stroked_price': instance.strokedPrice,
      'is_digital': instance.isDigital,
      'is_wishlist': instance.isWishlist,
      'main_price': instance.mainPrice,
      'variants': instance.variantsList?.map((e) => e.toJson()).toList(),
      'rating': instance.rating,
      'sales': instance.sales,
      'seller_id': instance.sellerId,
      'max_qty': instance.maxQntPerOrder,
      'brand': instance.brand?.toJson(),
      'description': instance.description,
      'video_provider': instance.videoProvider,
      'video_link': instance.videoLink,
      'category_name': instance.categoryName,
      'brand_name': instance.brandName,
      'is_fresh': instance.isFresh,
      'has_special_loyalty_points': instance.hasSpecialLoyaltyPoints,
      'has_shareholder_discount': instance.hasShareholderDiscount,
      'loyalty_points': instance.loyaltyPoints,
      'prescription_required': instance.prescriptionRequired,
      'insurance_eligible': instance.insuranceEligible,
      'branch': instance.branch?.toJson(),
    };
