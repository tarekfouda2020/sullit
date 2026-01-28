import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

class SaleTabsData {
  List<Product>? vipOffers;
  List<Product>? shareholderOffers;
  List<Product>? newArrival;
  List<Product>? onSale;
  List<Product>? bestRated;

  SaleTabsData({
    this.vipOffers,
    this.shareholderOffers,
    this.newArrival,
    this.onSale,
    this.bestRated,
  });
}
