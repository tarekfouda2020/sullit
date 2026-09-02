// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCardModel _$$_ProductCardModelFromJson(Map<String, dynamic> json) =>
    _$_ProductCardModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      typeLabel: json['type_label'] as String,
      unit: json['unit'] as String,
      barcode: json['barcode'] as String,
      prescriptionRequired: json['prescription_required'] as bool,
      insuranceEligible: json['insurance_eligible'] as bool,
      isFresh: json['is_fresh'] as bool,
      hasSpecialLoyaltyPoints: json['has_special_loyalty_points'] as bool,
      loyaltyPoints: (json['loyalty_points'] as num).toInt(),
      thumbnailImg: json['thumbnail_img'] as String,
      isMultiple: json['is_multiple'] as bool,
      priceHighLowDiscount: json['price_high_low_discount'] as String,
      priceHighLow: json['price_high_low'] as String,
      hasVipOffer: json['has_vip_offer'] as bool,
      hasShareholderDiscount: json['has_shareholder_discount'] as bool,
      hasDiscount: json['has_discount'] as bool,
      discount: json['discount'] as String,
      productOptions: (json['product_options'] as List<dynamic>?)
          ?.map((e) => ProductOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      minQty: (json['min_qty'] as num).toInt(),
      maxQty: (json['max_qty'] as num?)?.toInt(),
      currencySymbol: json['currency_symbol'] as String,
      variant: json['variant'] == null
          ? null
          : VariantModel.fromJson(json['variant'] as Map<String, dynamic>),
      rating: (json['rating'] as num).toDouble(),
      isDigital: json['is_digital'] as bool,
      isWishlist: json['is_wishlist'] as bool,
      sellerId: (json['seller_id'] as num).toInt(),
      shopId: (json['shop_id'] as num).toInt(),
      soldByType: json['sold_by_type'] as String,
      soldByName: json['sold_by_name'] as String,
      categoryName: json['category_name'] as String,
      brandName: json['brand_name'] as String,
      branch: json['branch'] == null
          ? null
          : PharmacyBranchModel.fromJson(
              json['branch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductCardModelToJson(_$_ProductCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'type_label': instance.typeLabel,
      'unit': instance.unit,
      'barcode': instance.barcode,
      'prescription_required': instance.prescriptionRequired,
      'insurance_eligible': instance.insuranceEligible,
      'is_fresh': instance.isFresh,
      'has_special_loyalty_points': instance.hasSpecialLoyaltyPoints,
      'loyalty_points': instance.loyaltyPoints,
      'thumbnail_img': instance.thumbnailImg,
      'is_multiple': instance.isMultiple,
      'price_high_low_discount': instance.priceHighLowDiscount,
      'price_high_low': instance.priceHighLow,
      'has_vip_offer': instance.hasVipOffer,
      'has_shareholder_discount': instance.hasShareholderDiscount,
      'has_discount': instance.hasDiscount,
      'discount': instance.discount,
      'product_options':
          instance.productOptions?.map((e) => e.toJson()).toList(),
      'min_qty': instance.minQty,
      'max_qty': instance.maxQty,
      'currency_symbol': instance.currencySymbol,
      'variant': instance.variant?.toJson(),
      'rating': instance.rating,
      'is_digital': instance.isDigital,
      'is_wishlist': instance.isWishlist,
      'seller_id': instance.sellerId,
      'shop_id': instance.shopId,
      'sold_by_type': instance.soldByType,
      'sold_by_name': instance.soldByName,
      'category_name': instance.categoryName,
      'brand_name': instance.brandName,
      'branch': instance.branch?.toJson(),
    };
