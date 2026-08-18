import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class ShopCardDomainModel extends BaseDomainModel {
  final int id;
  final int userId;
  final bool hasBranches;
  final String name;
  final String type;
  final String typeLabel;
  final String logo;
  final String email;
  final String? address;
  final String phone;
  final double rating;
  final List<String> sliders;
   bool follow;
  final String categoriesNames;
  bool isSelect = false;

  ShopCardDomainModel({
    required this.id,
    required this.userId,
    required this.hasBranches,
    required this.name,
    required this.type,
    required this.typeLabel,
    required this.logo,
    required this.email,
    required this.address,
    required this.phone,
    required this.rating,
    required this.sliders,
    required this.follow,
    required this.categoriesNames,
  });



  factory ShopCardDomainModel.fromJson(Map<String, dynamic> json) {
    return ShopCardDomainModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      hasBranches: json['has_branches'] as bool,
      name: json['name'] as String,
      type: json['type'] as String,
      typeLabel: json['type_label'] as String,
      logo: json['logo'] as String,
      email: json['email'] as String,
      address: json['address'] as String?,
      phone: json['phone'] as String,
      rating: (json['rating'] as num).toDouble(),
      sliders: (json['sliders'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      follow: json['follow'] as bool,
      categoriesNames: (json['categories_names'] as String?) ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'has_branches': hasBranches,
      'name': name,
      'type': type,
      'type_label': typeLabel,
      'logo': logo,
      'email': email,
      'address': address,
      'phone': phone,
      'rating': rating,
      'sliders': sliders,
      'follow': follow,
      'categories_names': categoriesNames,
    };
  }


}
