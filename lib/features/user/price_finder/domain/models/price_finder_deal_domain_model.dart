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
  });
}
