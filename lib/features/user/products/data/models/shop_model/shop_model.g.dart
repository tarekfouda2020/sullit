// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopModel _$$_ShopModelFromJson(Map<String, dynamic> json) => _$_ShopModel(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      hasBranches: json['has_branches'] as bool?,
      shopType: json['type'] as String,
      name: json['name'] as String,
      sliders:
          (json['sliders'] as List<dynamic>?)?.map((e) => e as String).toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => ShopCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      insuranceCompanies: (json['insurance_companies'] as List<dynamic>?)
          ?.map(
              (e) => InsuranceCompanyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      logo: json['logo'] as String,
      packageInvalidAt: json['package_invalid_at'] as String,
      products: (json['products'] as num?)?.toInt(),
      orders: (json['orders'] as num).toInt(),
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
      'has_branches': instance.hasBranches,
      'type': instance.shopType,
      'name': instance.name,
      'sliders': instance.sliders,
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'insurance_companies':
          instance.insuranceCompanies?.map((e) => e.toJson()).toList(),
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

_$_ShopCategoryModel _$$_ShopCategoryModelFromJson(Map<String, dynamic> json) =>
    _$_ShopCategoryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String?,
      metaTitle: json['meta_title'] as String?,
      metaDescription: json['meta_description'] as String?,
    );

Map<String, dynamic> _$$_ShopCategoryModelToJson(
        _$_ShopCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'slug': instance.slug,
      'description': instance.description,
      'meta_title': instance.metaTitle,
      'meta_description': instance.metaDescription,
    };
