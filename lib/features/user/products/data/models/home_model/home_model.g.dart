// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeModel _$$_HomeModelFromJson(Map<String, dynamic> json) => _$_HomeModel(
      sliders: (json['sliders'] as List<dynamic>)
          .map((e) => SliderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bannersOne: (json['banners_one'] as List<dynamic>)
          .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bannersTwo: (json['banners_two'] as List<dynamic>)
          .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      flashSales: json['flash_deal'] == null
          ? null
          : FlashSaleModel.fromJson(json['flash_deal'] as Map<String, dynamic>),
      cartCount: (json['cart_count'] as num).toInt(),
      favCount: (json['wishlist_count'] as num).toInt(),
      isAdminDiscount: json['is_admin_discount'] as bool,
      discountRate: (json['discount_rate'] as num).toInt(),
    );

Map<String, dynamic> _$$_HomeModelToJson(_$_HomeModel instance) =>
    <String, dynamic>{
      'sliders': instance.sliders.map((e) => e.toJson()).toList(),
      'banners_one': instance.bannersOne.map((e) => e.toJson()).toList(),
      'banners_two': instance.bannersTwo.map((e) => e.toJson()).toList(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'flash_deal': instance.flashSales?.toJson(),
      'cart_count': instance.cartCount,
      'wishlist_count': instance.favCount,
      'is_admin_discount': instance.isAdminDiscount,
      'discount_rate': instance.discountRate,
    };
