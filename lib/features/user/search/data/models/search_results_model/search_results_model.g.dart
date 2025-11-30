// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResultsModel _$$_SearchResultsModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchResultsModel(
      suggestions: (json['popular_suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      products: AllProductsSearchResultModel.fromJson(
          json['section_products'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      shops: (json['shops'] as List<dynamic>?)
          ?.map((e) => ShopModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchResultsModelToJson(
        _$_SearchResultsModel instance) =>
    <String, dynamic>{
      'popular_suggestions': instance.suggestions,
      'section_products': instance.products.toJson(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'shops': instance.shops?.map((e) => e.toJson()).toList(),
    };
