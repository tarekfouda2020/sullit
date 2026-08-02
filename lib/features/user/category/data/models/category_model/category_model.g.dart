// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      slug: json['slug'] as String,
      banner: json['banner'] as String?,
      orderLevel: (json['order_level'] as num?)?.toInt(),
      digital: (json['digital'] as num?)?.toInt(),
      subCats: (json['chileds'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'slug': instance.slug,
      'banner': instance.banner,
      'order_level': instance.orderLevel,
      'digital': instance.digital,
      'chileds': instance.subCats?.map((e) => e.toJson()).toList(),
    };
