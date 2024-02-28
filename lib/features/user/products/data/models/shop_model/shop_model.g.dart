// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopModel _$$_ShopModelFromJson(Map<String, dynamic> json) => _$_ShopModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      name: json['name'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      logo: json['logo'] as String,
      packageInvalidAt: json['package_invalid_at'] as String,
      products: json['products'] as int,
      orders: json['orders'] as int,
      address: json['address'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      facebook: json['facebook'] as String?,
      google: json['google'] as String?,
      twitter: json['twitter'] as String?,
      instagram: json['instagram'] as String?,
      youtube: json['youtube'] as String?,
      rating: json['rating'] as num,
      follow: json['follow'] as bool,
    );

Map<String, dynamic> _$$_ShopModelToJson(_$_ShopModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'title': instance.title,
      'description': instance.description,
      'logo': instance.logo,
      'package_invalid_at': instance.packageInvalidAt,
      'products': instance.products,
      'orders': instance.orders,
      'address': instance.address,
      'email': instance.email,
      'phone': instance.phone,
      'facebook': instance.facebook,
      'google': instance.google,
      'twitter': instance.twitter,
      'instagram': instance.instagram,
      'youtube': instance.youtube,
      'rating': instance.rating,
      'follow': instance.follow,
    };
