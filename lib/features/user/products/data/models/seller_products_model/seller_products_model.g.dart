// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SellerProductsModel _$$_SellerProductsModelFromJson(
        Map<String, dynamic> json) =>
    _$_SellerProductsModel(
      shop: ShopModel.fromJson(json['shop'] as Map<String, dynamic>),
      sectionProducts: SectionProductsModel.fromJson(
          json['section_products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SellerProductsModelToJson(
        _$_SellerProductsModel instance) =>
    <String, dynamic>{
      'shop': instance.shop.toJson(),
      'section_products': instance.sectionProducts.toJson(),
    };

_$_SectionProductsModel _$$_SectionProductsModelFromJson(
        Map<String, dynamic> json) =>
    _$_SectionProductsModel(
      pagination:
          PaginationModel.fromJson(json['pagination'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SectionProductsModelToJson(
        _$_SectionProductsModel instance) =>
    <String, dynamic>{
      'pagination': instance.pagination.toJson(),
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
