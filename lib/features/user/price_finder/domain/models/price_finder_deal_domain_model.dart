import 'package:flutter_tdd/features/user/best_sellers/data/enums/shop_type_enum.dart';

class PriceFinderDeal {
  final String storeName;
  final int rating;
  final double distanceKm;
  final double price;
  final double savings;
  final bool isLowest;
  final int productId;
  final int variantId;
  final int? branchId;
  final int shopId;
  final String currencySymbol;
  final ShopTypeEnum type;
  final String typeLabel;

  PriceFinderDeal({
    required this.storeName,
    required this.rating,
    required this.distanceKm,
    required this.price,
    required this.savings,
    required this.isLowest,
    required this.productId,
    required this.variantId,
    this.branchId,
    required this.shopId,
    required this.currencySymbol,
    required this.type,
    required this.typeLabel,
  });

  static ShopTypeEnum shopTypeFromKey(String type) {
    return switch (type) {
      'merchant' => ShopTypeEnum.merchant,
      'pharmacy' => ShopTypeEnum.pharmacy,
      'restaurant' => ShopTypeEnum.restaurant,
      _ => ShopTypeEnum.merchant,
    };
  }
}
