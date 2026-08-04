import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/merchant_shop_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';

abstract class ShopDomainModel extends BaseDomainModel {
  int? id;
  int? userId;
  String? name;
  String? shopType;
  String? title;
  String? description;
  String? logo;
  String? packageInvalidAt;
  int? products;
  int? orders;
  String? address;
  String? email;
  String? phone;
  String? facebook;
  String? google;
  String? twitter;
  String? instagram;
  String? youtube;
  int? sellerId;
  num? rating;
  bool? follow;
  List<String>? sliders;
  List<ShopCategory>? categories;
  bool isSelect;

  ShopDomainModel({
    required this.id,
    required this.userId,
    required this.name,
    this.title,
    this.sellerId,
    this.description,
    required this.logo,
    required this.packageInvalidAt,
    required this.products,
    required this.orders,
    this.address,
    this.phone,
    this.shopType,
    this.email,
    this.facebook,
    this.google,
    this.twitter,
    this.instagram,
    this.youtube,
    this.sliders,
    this.categories,
    this.isSelect = false,
    required this.rating,
    required this.follow,
  });

  factory ShopDomainModel.fromJson(Map<String, dynamic> json) {
    final type = (json['type'] ?? '').toString().toLowerCase();

    if (type == 'pharmacy') {
      return PharmacyModel.fromJson(json);
    }

    return MerchantShopModel.fromJson(json);
  }

  Map<String, dynamic> toJson();

  bool get isPharmacy => this is PharmacyModel;

  List<String> get shopCategoryNames =>
      categories?.map((e) => e.name ?? '').toList() ?? [];
}
