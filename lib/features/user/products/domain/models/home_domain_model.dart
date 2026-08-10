import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/products/domain/models/banner_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/merchant_shop_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/slider_domain_model.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';

import '../../../purchasing/domain/models/orders.dart';

class HomeDomainModel extends BaseDomainModel {
  final List<SliderDomainModel> sliders;
  final List<BannerDomainModel> bannersOne;
  final List<BannerDomainModel> bannersTwo;
  final List<Category> categories;
  final List<Orders> currentOrders;
  final FlashSale? flashSales;
  final List<Shop> shop;
  final List<Shop> topSellers;
  final List<Shop> pharmacyShops;

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

  HomeDomainModel copyWith({
    List<SliderDomainModel>? sliders,
    List<BannerDomainModel>? bannersOne,
    List<BannerDomainModel>? bannersTwo,
    List<Category>? categories,
    List<Orders>? currentOrders,
    FlashSale? flashSales,
    List<Shop>? shop,
    List<Shop>? topSellers,
    List<Shop>? pharmacyShops,
    int? cartCount,
    int? favCount,
    bool? isAdminDiscount,
    int? discountRate,
  }) {
    return HomeDomainModel(
      sliders: sliders ?? this.sliders,
      bannersOne: bannersOne ?? this.bannersOne,
      bannersTwo: bannersTwo ?? this.bannersTwo,
      categories: categories ?? this.categories,
      currentOrders: currentOrders ?? this.currentOrders,
      flashSales: flashSales ?? this.flashSales,
      shop: shop ?? this.shop,
      topSellers: topSellers ?? this.topSellers,
      pharmacyShops: pharmacyShops ?? this.pharmacyShops,
      cartCount: cartCount ?? this.cartCount,
      favCount: favCount ?? this.favCount,
      isAdminDiscount: isAdminDiscount ?? this.isAdminDiscount,
      discountRate: discountRate ?? this.discountRate,
    );
  }
}
