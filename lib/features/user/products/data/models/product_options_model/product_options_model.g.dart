// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_options_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductOptionsModel _$$_ProductOptionsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductOptionsModel(
      attributeId: (json['attribute_id'] as num).toInt(),
      title: json['title'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProductOptionsModelToJson(
        _$_ProductOptionsModel instance) =>
    <String, dynamic>{
      'attribute_id': instance.attributeId,
      'title': instance.title,
      'options': instance.options,
    };
