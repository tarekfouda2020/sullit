// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_products_search_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllProductsSearchResultModel _$$_AllProductsSearchResultModelFromJson(
        Map<String, dynamic> json) =>
    _$_AllProductsSearchResultModel(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AllProductsSearchResultModelToJson(
        _$_AllProductsSearchResultModel instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
