// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PopularProductModel _$$_PopularProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_PopularProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      banner: json['banner'] as String?,
      productsCount: (json['products_count'] as num).toInt(),
    );

Map<String, dynamic> _$$_PopularProductModelToJson(
        _$_PopularProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'banner': instance.banner,
      'products_count': instance.productsCount,
    };
