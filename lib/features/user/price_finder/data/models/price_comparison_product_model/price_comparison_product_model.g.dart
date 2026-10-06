// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_comparison_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceComparisonProductModel _$$_PriceComparisonProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_PriceComparisonProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      unit: json['unit'] as String,
      thumbnailImage: json['thumbnail_image'] as String,
      barcode: json['barcode'] as String,
      categoryName: json['category_name'] as String,
    );

Map<String, dynamic> _$$_PriceComparisonProductModelToJson(
        _$_PriceComparisonProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
      'thumbnail_image': instance.thumbnailImage,
      'barcode': instance.barcode,
      'category_name': instance.categoryName,
    };
