import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/banner_model/banner_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_card_model/shop_card_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/shop_model/shop_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/slider_model/slider_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/orders_list_model/orders_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../sale/data/models/flash_sale_model/flash_sale_model.dart';

part 'home_model.freezed.dart';

part 'home_model.g.dart';

@freezed
@immutable
class HomeModel extends BaseApiModel<HomeDomainModel> with _$HomeModel {
  const HomeModel._();

  @JsonSerializable(explicitToJson: true)
  const factory HomeModel({
    @JsonKey(name: 'sliders') required List<SliderModel> sliders,
    @JsonKey(name: 'banners_one') required List<BannerModel> bannersOne,
    @JsonKey(name: 'banners_two') required List<BannerModel> bannersTwo,
    @JsonKey(name: 'categories') required List<CategoryModel> categories,
    @JsonKey(name: 'current_orders') required List<OrdersListModel> currentOrders,
    @JsonKey(name: 'flash_deal') required FlashSaleModel? flashSales,
    @JsonKey(name: 'shops') required List<ShopCardModel> shops,
    @JsonKey(name: 'top_sellers') required List<ShopCardModel> topSellers,
    @JsonKey(name: 'pharmacy_shops') required List<ShopCardModel> pharmacyShops,
    @JsonKey(name: 'restaurant_shops') required List<ShopCardModel> restaurantShops,
    // @JsonKey(name: 'best_selling_products')
    //     required List<ProductModel> bestSellingProducts,
    // @JsonKey(name: 'newest_products')
    //     required List<ProductModel> newestProducts,
    // @JsonKey(name: 'featured_products')
    //     required List<ProductModel> featuredProducts,
    // @JsonKey(name: 'new_arrivals') required List<ProductModel> newArrivals,
    // @JsonKey(name: 'best_rated') required List<ProductModel> bestRated,
    @JsonKey(name: 'cart_count') required int cartCount,
    @JsonKey(name: 'wishlist_count') required int favCount,
    @JsonKey(name: 'is_admin_discount') required bool isAdminDiscount,
    @JsonKey(name: 'discount_rate') required int discountRate,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  @override
  HomeDomainModel toDomainModel() {
    return HomeDomainModel(
      sliders: sliders.map((e) => e.toDomainModel()).toList(),
      bannersOne: bannersOne.map((e) => e.toDomainModel()).toList(),
      bannersTwo: bannersTwo.map((e) => e.toDomainModel()).toList(),
      shop: shops.map((e) => e.toDomainModel()).toList(),
      topSellers: topSellers.map((e) => e.toDomainModel()).toList(),
      categories: categories.map((e) => e.toDomainModel()).toList(),
      currentOrders: currentOrders.map((e) => e.toDomainModel()).toList(),
      flashSales: flashSales?.toDomainModel(),
      // featuredProducts: featuredProducts.map((e) => e.toDomainModel()).toList(),
      // mostPopular: mostPopular.map((e) => e.toDomainModel()).toList(),
      // newestProducts: newestProducts.map((e) => e.toDomainModel()).toList(),
      // bestRated: bestRated.map((e) => e.toDomainModel()).toList(),
      // newArrivals: newArrivals.map((e) => e.toDomainModel()).toList(),
      cartCount: cartCount,
      favCount: favCount,
      discountRate: discountRate,
      isAdminDiscount: isAdminDiscount,
      pharmacyShops: pharmacyShops.map((e) => e.toDomainModel()).toList(),
        restaurantShops: restaurantShops.map((e) => e.toDomainModel()).toList()
    );
  }
}
