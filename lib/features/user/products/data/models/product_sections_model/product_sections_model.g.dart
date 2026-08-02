// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_sections_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductSectionsModel _$$_ProductSectionsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductSectionsModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductCardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductSectionsModelToJson(
        _$_ProductSectionsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
