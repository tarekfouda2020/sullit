import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product_card.dart';

class SaleTabsData {
  List<ProductCard>? vipOffers;
  List<ProductCard>? shareholderOffers;
  List<ProductCard>? newArrival;
  List<ProductCard>? onSale;
  List<ProductCard>? bestRated;

  SaleTabsData({
    this.vipOffers,
    this.shareholderOffers,
    this.newArrival,
    this.onSale,
    this.bestRated,
  });
}
