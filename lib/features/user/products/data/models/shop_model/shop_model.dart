import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/data/models/insurance_company_model/insurance_company_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_pickup.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_model.freezed.dart';

part 'shop_model.g.dart';

@freezed
@immutable
class ShopModel extends BaseApiModel<Shop> with _$ShopModel {
  const ShopModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShopModel({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'has_branches')  bool? hasBranches,
    @JsonKey(name: 'type') required String shopType,
    required String name,
    List<String>? sliders,
    List<ShopCategoryModel>? categories,
    @JsonKey(name: 'insurance_companies')
    List<InsuranceCompanyModel>? insuranceCompanies,
    String? title,
    String? description,
    required String logo,
    @JsonKey(name: 'package_invalid_at') required String packageInvalidAt,
    required int? products,
    required int orders,
    String? address,
    required String? email,
    required String? phone,
    required String? facebook,
    required String? google,
    required String? twitter,
    required String? instagram,
    required String? youtube,
    required num rating,
    required bool follow,
    ShopPickupModel? pickup,
  }) = _ShopModel;

  factory ShopModel.fromJson(Map<String, dynamic> json) =>
      _$ShopModelFromJson(json);

  // @override
  // ShopDomainModel toDomainModel() {
  //   if (shopType.toLowerCase() == 'pharmacy') {
  //     return PharmacyModel(
  //       id: id,
  //       userId: userId,
  //       name: name,
  //       products: products,
  //       logo: logo,
  //       rating: rating,
  //       description: description,
  //       title: title,
  //       address: address,
  //       orders: orders,
  //       packageInvalidAt: packageInvalidAt,
  //       email: email,
  //       phone: phone,
  //       facebook: facebook,
  //       google: google,
  //       instagram: instagram,
  //       twitter: twitter,
  //       youtube: youtube,
  //       follow: follow,
  //       categories: categories?.map((e) => e.toDomainModel()).toList(),
  //       sliders: sliders,
  //     );
  //   }
  //
  //   return MerchantShopModel(
  //     id: id,
  //     userId: userId,
  //     name: name,
  //     products: products,
  //     logo: logo,
  //     rating: rating,
  //     description: description,
  //     title: title,
  //     address: address,
  //     orders: orders,
  //     packageInvalidAt: packageInvalidAt,
  //     email: email,
  //     phone: phone,
  //     facebook: facebook,
  //     google: google,
  //     instagram: instagram,
  //     twitter: twitter,
  //     youtube: youtube,
  //     follow: follow,
  //     categories: categories?.map((e) => e.toDomainModel()).toList(),
  //     sliders: sliders,
  //   );
  // }

  @override
  Shop toDomainModel() {
    return Shop(
      id: id,
      userId: userId,
      name: name,
      products: products,
      logo: logo,
      rating: rating,
      description: description,
      title: title,
      address: address,
      orders: orders,
      packageInvalidAt: packageInvalidAt,
      email: email,
      phone: phone,
      facebook: facebook,
      google: google,
      instagram: instagram,
      twitter: twitter,
      youtube: youtube,
      follow: follow,
      categories: categories?.map((e) => e.toDomainModel()).toList(),
      sliders: sliders,
      shopType: shopType,
      hasBranches: hasBranches,
      insuranceCompanies:
          insuranceCompanies?.map((e) => e.toDomainModel()).toList(),
      pickUp: pickup?.toDomainModel(),
    );
  }
}

@freezed
@immutable
class ShopPickupModel extends BaseApiModel<ShopPickup> with _$ShopPickupModel {
  const ShopPickupModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShopPickupModel({
    required int id,
    required String address,
    @JsonKey(name: 'postal_code') required String postalCode,
    required String phone,
    required double lat,
    required double lang,
  }) = _ShopPickupModel;

  factory ShopPickupModel.fromJson(Map<String, dynamic> json) =>
      _$ShopPickupModelFromJson(json);

  @override
  ShopPickup toDomainModel() {
    return ShopPickup(
      id: id,
      address: address,
      postalCode: postalCode,
      phone: phone,
      lat: lat,
      lang: lang,
    );
  }
}

@freezed
@immutable
class ShopCategoryModel extends BaseApiModel<ShopCategory>
    with _$ShopCategoryModel {
  const ShopCategoryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShopCategoryModel({
    required int id,
    required String name,
    required String icon,
    required String slug,
    String? description,
    @JsonKey(name: "meta_title") String? metaTitle,
    @JsonKey(name: "meta_description") String? metaDescription,
  }) = _ShopCategoryModel;

  factory ShopCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ShopCategoryModelFromJson(json);

  @override
  ShopCategory toDomainModel() {
    return ShopCategory(
      id: id,
      name: name,
      icon: icon,
      slug: slug,
      description: description ?? "",
      metaDescription: metaDescription ?? "",
      metaTitle: metaTitle ?? "",
    );
  }
}
