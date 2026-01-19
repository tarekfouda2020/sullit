import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';
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
    required String name,
     List<String>? sliders,
     List<ShopCategoryModel>? categories,
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
  }) = _ShopModel;

  factory ShopModel.fromJson(Map<String, dynamic> json) =>
      _$ShopModelFromJson(json);

  @override
  Shop toDomainModel() {
    return Shop(
      id: id,
      name: name,
      products: products,
      logo: logo,
      rating: rating,
      description: description,
      title: title,
      address: address,
      userId: userId,
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
      categories: categories?.map((e) => e.toDomainModel()).toList()
    );
  }
}



@freezed
@immutable
class ShopCategoryModel extends BaseApiModel<ShopCategory> with _$ShopCategoryModel {
  const ShopCategoryModel._();

  @JsonSerializable(explicitToJson: true)
  const factory ShopCategoryModel({
    required int id,
    required String name,
    required String icon,
    required String slug,

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
    );
  }
}
