// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopCardModel _$$_ShopCardModelFromJson(Map<String, dynamic> json) =>
    _$_ShopCardModel(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      hasBranches: json['has_branches'] as bool,
      name: json['name'] as String,
      type: json['type'] as String,
      typeLabel: json['type_label'] as String,
      logo: json['logo'] as String,
      email: json['email'] as String,
      address: json['address'] as String?,
      phone: json['phone'] as String,
      rating: (json['rating'] as num).toDouble(),
      sliders:
          (json['sliders'] as List<dynamic>).map((e) => e as String).toList(),
      follow: json['follow'] as bool,
      categoriesNames: json['categories_names'] as String?,
    );

Map<String, dynamic> _$$_ShopCardModelToJson(_$_ShopCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'has_branches': instance.hasBranches,
      'name': instance.name,
      'type': instance.type,
      'type_label': instance.typeLabel,
      'logo': instance.logo,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'rating': instance.rating,
      'sliders': instance.sliders,
      'follow': instance.follow,
      'categories_names': instance.categoriesNames,
    };
