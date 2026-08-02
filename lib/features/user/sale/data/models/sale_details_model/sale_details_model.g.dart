// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaleDetailsModel _$$_SaleDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_SaleDetailsModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      banner: json['banner'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductCardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SaleDetailsModelToJson(_$_SaleDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'banner': instance.banner,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
