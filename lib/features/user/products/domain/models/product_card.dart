import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_branch_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_options.dart';
import 'package:flutter_tdd/features/user/products/domain/models/variant.dart';

class ProductCard extends BaseDomainModel {
  final int id;
  final String name;
  final String type;
  final String typeLabel;
  final String unit;
  final String barcode;
  final bool prescriptionRequired;
  final bool insuranceEligible;
  final bool isFresh;
  final bool hasSpecialLoyaltyPoints;
  final int loyaltyPoints;
  final String thumbnailImg;
  final bool isMultiple;
  final String priceHighLowDiscount;
  final String priceHighLow;
  final bool hasVipOffer;
  final bool hasShareholderDiscount;
  final bool hasDiscount;
  final String discount;
  final int minQty;
  final int? maxQty;
  final String currencySymbol;
  final Variant? variant;
  final double rating;
  final List<ProductOptionModel>? productOptions;
  final bool isDigital;
  bool isWishlist;
  final int sellerId;
  final int shopId;
  final String soldByType;
  final String soldByName;
  final String categoryName;
  final String brandName;
  BranchDomainModel? branch;

  int? addedQtyToCart;
  bool? isAddedTCompare;

  bool get isFreshProduct => isFresh;

  bool get isOutOfStock => (variant?.currentStock ?? 0) == 0 && !isFreshProduct;

  bool get sameQntInCart => (variant?.currentStock ?? 0) == addedQtyToCart;

  bool showPriceDiscount({bool? showVipDiscount}) => hasDiscount || showVipDiscount == true;

  bool get haveOptions => productOptions?.isNotEmpty == true;

  bool get isAnyRequired => productOptions?.any((element) => element.isRequired) == true;

  ProductCard({
    required this.id,
    required this.name,
    required this.type,
    required this.typeLabel,
    required this.unit,
    this.productOptions,
    required this.barcode,
    required this.prescriptionRequired,
    required this.insuranceEligible,
    required this.isFresh,
    required this.hasSpecialLoyaltyPoints,
    required this.loyaltyPoints,
    required this.thumbnailImg,
    required this.isMultiple,
    required this.priceHighLowDiscount,
    required this.priceHighLow,
    required this.hasVipOffer,
    required this.hasShareholderDiscount,
    required this.hasDiscount,
    required this.discount,
    required this.minQty,
    this.maxQty,
    required this.currencySymbol,
    this.variant,
    required this.rating,
    required this.isDigital,
    required this.isWishlist,
    required this.sellerId,
    required this.shopId,
    required this.soldByType,
    required this.soldByName,
    required this.categoryName,
    required this.brandName,
    this.branch,
    this.addedQtyToCart = 0,
    this.isAddedTCompare,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'type_label': typeLabel,
        "branch" : branch,
        'unit': unit,
        'barcode': barcode,
        'prescription_required': prescriptionRequired,
        'insurance_eligible': insuranceEligible,
        'is_fresh': isFresh,
        'has_special_loyalty_points': hasSpecialLoyaltyPoints,
        'loyalty_points': loyaltyPoints,
        'thumbnail_img': thumbnailImg,
        'is_multiple': isMultiple,
        'price_high_low_discount': priceHighLowDiscount,
        'price_high_low': priceHighLow,
        'has_vip_offer': hasVipOffer,
        'has_shareholder_discount': hasShareholderDiscount,
        'has_discount': hasDiscount,
        'discount': discount,
        'min_qty': minQty,
        'max_qty': maxQty,
        'currency_symbol': currencySymbol,
        'variant': variant?.toJson(),
        'rating': rating,
        'product_options': productOptions,
        'is_digital': isDigital,
        'is_wishlist': isWishlist,
        'seller_id': sellerId,
        'shop_id': shopId,
        'sold_by_type': soldByType,
        'sold_by_name': soldByName,
        'category_name': categoryName,
        'brand_name': brandName,
      };
}
