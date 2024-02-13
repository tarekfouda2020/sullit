import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/core/models/domain_models/brand_domain_model.dart';
import 'package:flutter_tdd/features/user/category/domain/models/category.dart';
import 'package:flutter_tdd/features/user/products/domain/models/banner_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/popular_products_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/slider_domain_model.dart';
import 'package:flutter_tdd/features/user/sale/domain/models/flash_sale.dart';

class HomeDomainModel extends BaseDomainModel {
  final List<SliderDomainModel> sliders;
  final List<BannerDomainModel> bannersOne;
  final List<BannerDomainModel> bannersTwo;
  final List<Category> categories;
  final FlashSale? flashSales;
  // final List<PopularProductsDomainModel> mostPopular;
  // final List<Product> bestSellingProducts;
  // final List<Product> newestProducts;
  // final List<Product> featuredProducts;
  // final List<Product> newArrivals;
  // final List<Product> bestRated;
  final int cartCount;
  final int favCount;

  HomeDomainModel({
    required this.sliders,
    required this.bannersOne,
    required this.bannersTwo,
    required this.categories,
    this.flashSales,
    // required this.mostPopular,
    // required this.bestSellingProducts,
    // required this.newestProducts,
    // required this.featuredProducts,
    // required this.newArrivals,
    // required this.bestRated,
    required this.cartCount,
    required this.favCount,
  });
}
