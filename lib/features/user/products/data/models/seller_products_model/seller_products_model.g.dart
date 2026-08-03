// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SellerProductsModel _$$_SellerProductsModelFromJson(
        Map<String, dynamic> json) =>
    _$_SellerProductsModel(
      sectionProducts: SectionProductsModel.fromJson(
          json['section_products'] as Map<String, dynamic>),
      priceRange:
          PriceRangeModel.fromJson(json['price_range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SellerProductsModelToJson(
        _$_SellerProductsModel instance) =>
    <String, dynamic>{
      'section_products': instance.sectionProducts.toJson(),
      'price_range': instance.priceRange.toJson(),
    };

_$_SectionProductsModel _$$_SectionProductsModelFromJson(
        Map<String, dynamic> json) =>
    _$_SectionProductsModel(
      pagination: SellerPaginationData.fromJson(
          json['pagination'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductCardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SectionProductsModelToJson(
        _$_SectionProductsModel instance) =>
    <String, dynamic>{
      'pagination': instance.pagination.toJson(),
      'products': instance.products.map((e) => e.toJson()).toList(),
    };

_$_SellerPaginationData _$$_SellerPaginationDataFromJson(
        Map<String, dynamic> json) =>
    _$_SellerPaginationData(
      totalItems: (json['total_items'] as num).toInt(),
      countItems: (json['count_items'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      totalPages: (json['total_pages'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      nextPageUrl: json['next_page_url'] as String,
      pervPageUrl: json['perv_page_url'] as String,
    );

Map<String, dynamic> _$$_SellerPaginationDataToJson(
        _$_SellerPaginationData instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'count_items': instance.countItems,
      'per_page': instance.perPage,
      'total_pages': instance.totalPages,
      'current_page': instance.currentPage,
      'next_page_url': instance.nextPageUrl,
      'perv_page_url': instance.pervPageUrl,
    };
