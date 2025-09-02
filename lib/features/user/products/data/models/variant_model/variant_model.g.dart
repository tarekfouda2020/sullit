// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VariantModel _$$_VariantModelFromJson(Map<String, dynamic> json) =>
    _$_VariantModel(
      id: json['id'] as int,
      name: json['name'] as String,
      sku: json['sku'] as String,
      strokedPrice: json['stroked_price'] as String,
      calculablePrice: json['calculable_price'] as String,
      mainPrice: json['main_price'] as String,
      currentStock: json['current_stock'] as int,
      currencySymbol: json['currency_symbol'] as String,
      image: json['image'] as String,
      options: json['options'] as String,
    );

Map<String, dynamic> _$$_VariantModelToJson(_$_VariantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sku': instance.sku,
      'stroked_price': instance.strokedPrice,
      'calculable_price': instance.calculablePrice,
      'main_price': instance.mainPrice,
      'current_stock': instance.currentStock,
      'currency_symbol': instance.currencySymbol,
      'image': instance.image,
      'options': instance.options,
    };
