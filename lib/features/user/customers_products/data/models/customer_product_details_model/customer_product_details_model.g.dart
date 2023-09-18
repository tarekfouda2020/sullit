// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerProductDetailsModel _$$_CustomerProductDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerProductDetailsModel(
      customerProduct: CustomerProductModel.fromJson(
          json['customer_product'] as Map<String, dynamic>),
      relatedProducts: (json['related_customer_products'] as List<dynamic>)
          .map((e) => CustomerProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CustomerProductDetailsModelToJson(
        _$_CustomerProductDetailsModel instance) =>
    <String, dynamic>{
      'customer_product': instance.customerProduct.toJson(),
      'related_customer_products':
          instance.relatedProducts.map((e) => e.toJson()).toList(),
    };
