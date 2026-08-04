import 'package:flutter_tdd/features/user/products/domain/models/shop_model/shop_domain_model.dart';

class PharmacyModel extends ShopDomainModel {
  PharmacyModel({
    required super.id,
    required super.userId,
    required super.name,
    super.title,
    super.sellerId,
    super.description,
    required super.logo,
    required super.packageInvalidAt,
    required super.products,
    required super.orders,
    super.address,
    super.phone,
    super.shopType,
    super.email,
    super.facebook,
    super.google,
    super.twitter,
    super.instagram,
    super.youtube,
    super.sliders,
    super.categories,
    super.isSelect,
    required super.rating,
    required super.follow,
  });

  factory PharmacyModel.fromJson(Map<String, dynamic> json) {
    return PharmacyModel(
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

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'seller_id': sellerId,
      'name': name,
      'title': title,
      'description': description,
      'type': shopType,
      'logo': logo,
      'package_invalid_at': packageInvalidAt,
      'email': email,
      'products': products,
      'orders': orders,
      'address': address,
      'phone': phone,
      'facebook': facebook,
      'google': google,
      'twitter': twitter,
      'instagram': instagram,
      'youtube': youtube,
      'rating': rating,
      'follow': follow,
      'sliders': sliders,
    };
  }
}
