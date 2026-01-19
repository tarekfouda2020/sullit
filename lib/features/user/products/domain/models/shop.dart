import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
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
   String? phone;
   String? facebook;
   String? google;
   String? twitter;
   String? instagram;
   String? youtube;
   num? rating;
   bool?follow;
   List<ShopCategory>? categories;

  Shop({
    required this.id,
    required this.userId,
    required this.name,
     this.title,
     this.description,
    required this.logo,
    required this.packageInvalidAt,
    required this.products,
    required this.orders,
    this.address,
    this.phone,
    this.email,
    this.facebook,
    this.google,
    this.twitter,
    this.instagram,
    this.youtube,
    this.categories,
    required this.rating,
    required this.follow,
  });
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
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
    data['follow']=follow;
    return data;
  }
  Shop.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    name = json['name'];
    title = json['title'];
    description = json['description'];
    logo = json['logo'];
    packageInvalidAt = json['package_invalid_at'];
    email = json['email'];
    products = json['products'];
    orders = json['orders'];
    address = json['address'];
    phone = json['phone'];
    facebook = json['facebook'];
    google = json['google'];
    twitter = json['twitter'];
    instagram = json['instagram'];
    youtube = json['youtube'];
    rating = json['rating'];
    follow=json['follow'];
  }
}
