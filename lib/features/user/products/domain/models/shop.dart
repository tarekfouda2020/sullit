import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/insurance_company.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_card_domain_model.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_pickup.dart';

class Shop extends BaseDomainModel {
  int? id;
  int? userId;
  String? name;
  String? title;
  String? description;
  String? logo;
  String? packageInvalidAt;
  String? address;
  String? email;
  String? shopType;
  String? typeLabel;
  String? phone;
  String? facebook;
  String? google;
  String? twitter;
  String? instagram;
  String? youtube;
  int? sellerId;
  double? rating;
  bool? follow;
  bool? hasBranches;
  ShopPickup? pickUp;
  List<String>? sliders;
  List<InsuranceCompany>? insuranceCompanies;
  bool isSelect = false;
  bool isSelected = false;
  bool supportsInStoreShopping = false;

  Shop({
    required this.id,
    required this.userId,
    required this.name,
    this.title,
    this.sellerId,
    this.description,
    required this.logo,
    required this.packageInvalidAt,
    this.address,
    this.phone,
    this.hasBranches,
    this.email,
    this.facebook,
    this.google,
    this.twitter,
    this.instagram,
    this.youtube,
    this.sliders,
    this.insuranceCompanies,
    this.shopType,
    this.typeLabel,
    this.pickUp,
    this.isSelect = false,
    required this.rating,
    required this.follow,
     this.supportsInStoreShopping = false,
  });

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      id: json['id'],
      userId: json['user_id'],
      typeLabel: json['type_label'],
      sellerId: json['seller_id'],
      name: json['name'],
      title: json['title'],
      description: json['description'],
      shopType: json['type'],
      logo: json['logo'],
      packageInvalidAt: json['package_invalid_at'],
      email: json['email'],
      address: json['address'],
      phone: json['phone'],
      facebook: json['facebook'],
      google: json['google'],
      twitter: json['twitter'],
      instagram: json['instagram'],
      youtube: json['youtube'],
      rating: json['rating'],
      follow: json['follow'],
      supportsInStoreShopping: json['supports_in_store_shopping'],
      sliders: (json['sliders'] as List?)?.map((e) => e.toString()).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['seller_id'] = sellerId;
    data['type_label'] = typeLabel;
    data['supports_in_store_shopping'] = supportsInStoreShopping;
    data['name'] = name;
    data['title'] = title;
    data['description'] = description;
    data['logo'] = logo;
    data['package_invalid_at'] = packageInvalidAt;
    data['email'] = email;
    data['address'] = address;
    data['phone'] = phone;
    data['facebook'] = facebook;
    data['google'] = google;
    data['twitter'] = twitter;
    data['instagram'] = instagram;
    data['youtube'] = youtube;
    data['rating'] = rating;
    data["sliders"] = sliders;
    data['follow'] = follow;
    data['type'] = shopType;
    return data;
  }



  ShopCardDomainModel toShopCardDomainModel() {
    return ShopCardDomainModel(
      id: id!,
      userId: userId!,
      hasBranches: hasBranches!,
      name: name!,
      type: shopType!,
      typeLabel: typeLabel ?? "",
      logo: logo ?? "",
      email: email ?? "",
      address: address??"",
      phone: phone ?? "",
      rating: rating ?? 0,
      sliders: sliders ?? <String>[],
      follow: follow ?? false,
      categoriesNames: "",
    );
  }
}
