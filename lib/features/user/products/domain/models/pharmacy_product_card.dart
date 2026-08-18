import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_branch_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';

class PharmacyProductCard extends ProductCard {
  PharmacyBranchDomainModel? branch;

  PharmacyProductCard({
    required super.id,
    required super.name,
    required super.type,
    required super.typeLabel,
    required super.unit,
    required super.barcode,
    required super.prescriptionRequired,
    required super.insuranceEligible,
    required super.isFresh,
    required super.hasSpecialLoyaltyPoints,
    required super.loyaltyPoints,
    required super.thumbnailImg,
    required super.isMultiple,
    required super.priceHighLowDiscount,
    required super.priceHighLow,
    required super.hasVipOffer,
    required super.hasShareholderDiscount,
    required super.hasDiscount,
    required super.discount,
    required super.minQty,
    super.maxQty,
    required super.currencySymbol,
    super.variant,
    required super.rating,
    required super.isDigital,
    required super.isWishlist,
    required super.sellerId,
    required super.shopId,
    required super.soldByType,
    required super.soldByName,
    required super.categoryName,
    required super.brandName,
    super.addedQtyToCart,
    super.isAddedTCompare,
    this.branch,
  });

  /// Wraps a plain [ProductCard] (as returned by the generic seller-products
  /// mapper) with pharmacy-only [branch] context. `branch` is never part of
  /// the product JSON — it is the currently selected branch on the pharmacy
  /// details page, injected by the caller.
  factory PharmacyProductCard.fromCard(
    ProductCard card, {
    PharmacyBranchDomainModel? branch,
  }) {
    return PharmacyProductCard(
      id: card.id,
      name: card.name,
      type: card.type,
      typeLabel: card.typeLabel,
      unit: card.unit,
      barcode: card.barcode,
      prescriptionRequired: card.prescriptionRequired,
      insuranceEligible: card.insuranceEligible,
      isFresh: card.isFresh,
      hasSpecialLoyaltyPoints: card.hasSpecialLoyaltyPoints,
      loyaltyPoints: card.loyaltyPoints,
      thumbnailImg: card.thumbnailImg,
      isMultiple: card.isMultiple,
      priceHighLowDiscount: card.priceHighLowDiscount,
      priceHighLow: card.priceHighLow,
      hasVipOffer: card.hasVipOffer,
      hasShareholderDiscount: card.hasShareholderDiscount,
      hasDiscount: card.hasDiscount,
      discount: card.discount,
      minQty: card.minQty,
      maxQty: card.maxQty,
      currencySymbol: card.currencySymbol,
      variant: card.variant,
      rating: card.rating,
      isDigital: card.isDigital,
      isWishlist: card.isWishlist,
      sellerId: card.sellerId,
      shopId: card.shopId,
      soldByType: card.soldByType,
      soldByName: card.soldByName,
      categoryName: card.categoryName,
      brandName: card.brandName,
      addedQtyToCart: card.addedQtyToCart,
      isAddedTCompare: card.isAddedTCompare,
      branch: branch,
    );
  }
}
