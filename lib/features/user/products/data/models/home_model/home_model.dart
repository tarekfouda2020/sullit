

import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/core/models/api_models/product_model/product_model.dart';
import 'package:flutter_tdd/features/user/category/data/models/category_model/category_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/banner_model/banner_model.dart';
import 'package:flutter_tdd/features/user/products/data/models/slider_model/slider_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/home_domain_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../sale/data/models/flash_sale_model/flash_sale_model.dart';
import '../popular_product_model/popular_product_model.dart';

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
    @JsonKey(name: 'flash_deal') required FlashSaleModel? flashSales,
    @JsonKey(name: 'most_populars')
        required List<PopularProductModel> mostPopular,
    @JsonKey(name: 'best_selling_products')
        required List<ProductModel> bestSellingProducts,
    @JsonKey(name: 'newest_products')
        required List<ProductModel> newestProducts,
    @JsonKey(name: 'featured_products')
        required List<ProductModel> featuredProducts,

  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

  @override
  HomeDomainModel toDomainModel() {
    return HomeDomainModel(
      sliders: sliders.map((e) => e.toDomainModel()).toList(),
      bannersOne: bannersOne.map((e) => e.toDomainModel()).toList(),
      bannersTwo: bannersTwo.map((e) => e.toDomainModel()).toList(),
      bestSellingProducts: bestSellingProducts.map((e) => e.toDomainModel()).toList(),
      categories: categories.map((e) => e.toDomainModel()).toList(),
      flashSales: flashSales?.toDomainModel(),
      featuredProducts: featuredProducts.map((e) => e.toDomainModel()).toList(),
      mostPopular: mostPopular.map((e) =>e.toDomainModel()).toList(),
      newestProducts: newestProducts.map((e) => e.toDomainModel()).toList(),
    );
  }
}
