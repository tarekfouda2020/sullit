// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlashSaleModel _$$_FlashSaleModelFromJson(Map<String, dynamic> json) =>
    _$_FlashSaleModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      banner: json['banner'] as String,
    );

Map<String, dynamic> _$$_FlashSaleModelToJson(_$_FlashSaleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'banner': instance.banner,
    };
