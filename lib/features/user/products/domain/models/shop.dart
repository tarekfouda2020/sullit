import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/insurance_company.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop_category.dart';

class Shop extends BaseDomainModel {
  int? id;
  int? userId;
  String? name;
  String? title;
  String? description;
  String? logo;
  String? packageInvalidAt;
  int? products;
  int? orders;
  String? address;
  String? email;
  String? shopType;
  String? phone;
  String? facebook;
  String? google;
  String? twitter;
  String? instagram;
  String? youtube;
  int? sellerId;
  num? rating;
  bool? follow;
  bool? hasBranches;
  List<String>? sliders;
  List<ShopCategory>? categories;
  List<InsuranceCompany>? insuranceCompanies;
  bool isSelect = false;
  bool isSelected = false;

  Shop({
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
    this.hasBranches,
    this.email,
    this.facebook,
    this.google,
    this.twitter,
    this.instagram,
    this.youtube,
    this.sliders,
    this.categories,
    this.insuranceCompanies,
    this.shopType,
    this.isSelect = false,
    required this.rating,
    required this.follow,
  });

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      id: json['id'],
      userId: json['user_id'],
      sellerId: json['seller_id'],
      name: json['name'],
      title: json['title'],
      description: json['description'],
      shopType: json['type'],
      logo: json['logo'],
      packageInvalidAt: json['package_invalid_at'],
      email: json['email'],
      products: json['products'],
      orders: json['orders'],
      address: json['address'],
      phone: json['phone'],
      facebook: json['facebook'],
      google: json['google'],
      twitter: json['twitter'],
      instagram: json['instagram'],
      youtube: json['youtube'],
      rating: json['rating'],
      follow: json['follow'],
      sliders: (json['sliders'] as List?)?.map((e) => e.toString()).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['seller_id'] = sellerId;
    data['name'] = name;
    data['title'] = title;
    data['description'] = description;
    data['logo'] = logo;
    data['package_invalid_at'] = packageInvalidAt;
    data['email'] = email;
    data['products'] = products;
    data['orders'] = orders;
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

  List<String> get shopCategoryNames =>
      categories?.map((e) => e.name).toList() ?? [];
}
