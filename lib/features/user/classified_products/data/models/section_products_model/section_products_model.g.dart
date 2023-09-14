// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SectionProductsModel _$$_SectionProductsModelFromJson(
        Map<String, dynamic> json) =>
    _$_SectionProductsModel(
      products: (json['products'] as List<dynamic>)
          .map((e) => CusProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SectionProductsModelToJson(
        _$_SectionProductsModel instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
