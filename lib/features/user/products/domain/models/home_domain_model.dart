import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/products/domain/models/banner_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/merchant_shop_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_card_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/slider_domain_model.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';

import '../../../purchasing/domain/models/orders_list_domain_model.dart' show OrdersListDomainModel;

class HomeDomainModel extends BaseDomainModel {
  final List<SliderDomainModel> sliders;
  final List<BannerDomainModel> bannersOne;
  final List<BannerDomainModel> bannersTwo;
  final List<Category> categories;
   List<OrdersListDomainModel> currentOrders;
  final FlashSale? flashSales;
  final List<ShopCardDomainModel> shop;
  final List<ShopCardDomainModel> topSellers;
  final List<ShopCardDomainModel> pharmacyShops;
  // final List<Product> bestSellingProducts;
  // final List<Product> newestProducts;
  // final List<Product> featuredProducts;
  // final List<Product> newArrivals;
  // final List<Product> bestRated;
  final int cartCount;
  final int favCount;
  final bool isAdminDiscount;
  final int discountRate;

  HomeDomainModel({
    required this.sliders,
    required this.bannersOne,
    required this.bannersTwo,
    required this.categories,
    required this.currentOrders,
    this.flashSales,
    required this.shop,
    required this.topSellers,
    // required this.mostPopular,
    // required this.bestSellingProducts,
    // required this.newestProducts,
    // required this.featuredProducts,
    // required this.newArrivals,
    // required this.bestRated,
    required this.cartCount,
    required this.favCount,
    required this.isAdminDiscount,
    required this.discountRate,
    required this.pharmacyShops,
  });

}
