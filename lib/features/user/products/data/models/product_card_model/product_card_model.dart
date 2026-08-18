import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/variant_model/variant_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_card_model.freezed.dart';
part 'product_card_model.g.dart';

@freezed
@immutable
class ProductCardModel extends BaseApiModel<ProductCard> with _$ProductCardModel {
  const ProductCardModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ProductCardModel({
    required int id,
    required String name,
    required String type,
    @JsonKey(name: 'type_label') required String typeLabel,
    required String unit,
    required String barcode,
    @JsonKey(name: 'prescription_required') required bool prescriptionRequired,
    @JsonKey(name: 'insurance_eligible') required bool insuranceEligible,
    @JsonKey(name: 'is_fresh') required bool isFresh,
    @JsonKey(name: 'has_special_loyalty_points') required bool hasSpecialLoyaltyPoints,
    @JsonKey(name: 'loyalty_points') required int loyaltyPoints,
    @JsonKey(name: 'thumbnail_img') required String thumbnailImg,
    @JsonKey(name: 'is_multiple') required bool isMultiple,
    @JsonKey(name: 'price_high_low_discount') required String priceHighLowDiscount,
    @JsonKey(name: 'price_high_low') required String priceHighLow,
    @JsonKey(name: 'has_vip_offer') required bool hasVipOffer,
    @JsonKey(name: 'has_shareholder_discount') required bool hasShareholderDiscount,
    @JsonKey(name: 'has_discount') required bool hasDiscount,
    required String discount,
    @JsonKey(name: 'min_qty') required int minQty,
    @JsonKey(name: 'max_qty') int? maxQty,
    @JsonKey(name: 'currency_symbol') required String currencySymbol,
    VariantModel? variant,
    required double rating,
    @JsonKey(name: 'is_digital') required bool isDigital,
    @JsonKey(name: 'is_wishlist') required bool isWishlist,
    @JsonKey(name: 'seller_id') required int sellerId,
    @JsonKey(name: 'shop_id') required int shopId,
    @JsonKey(name: 'sold_by_type') required String soldByType,
    @JsonKey(name: 'sold_by_name') required String soldByName,
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'brand_name') required String brandName,
  }) = _ProductCardModel;

  factory ProductCardModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCardModelFromJson(json);

  @override
  ProductCard toDomainModel() {
    return ProductCard(
      id: id,
      name: name,
      type: type,
      typeLabel: typeLabel,
      unit: unit,
      barcode: barcode,
      prescriptionRequired: prescriptionRequired,
      insuranceEligible: insuranceEligible,
      isFresh: isFresh,
      hasSpecialLoyaltyPoints: hasSpecialLoyaltyPoints,
      loyaltyPoints: loyaltyPoints,
      thumbnailImg: thumbnailImg,
      isMultiple: isMultiple,
      priceHighLowDiscount: priceHighLowDiscount,
      priceHighLow: priceHighLow,
      hasVipOffer: hasVipOffer,
      hasShareholderDiscount: hasShareholderDiscount,
      hasDiscount: hasDiscount,
      discount: discount,
      minQty: minQty,
      maxQty: maxQty,
      currencySymbol: currencySymbol,
      variant: variant?.toDomainModel(),
      rating: rating,
      isDigital: isDigital,
      isWishlist: isWishlist,
      sellerId: sellerId,
      shopId: shopId,
      soldByType: soldByType,
      soldByName: soldByName,
      categoryName: categoryName,
      brandName: brandName,
    );
  }
}
