// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductOption _$$_ProductOptionFromJson(Map<String, dynamic> json) =>
    _$_ProductOption(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      isRequired: json['is_required'] as bool,
      maxSelect: (json['max_select'] as num?)?.toInt(),
      sortOrder: (json['sort_order'] as num).toInt(),
      values: (json['values'] as List<dynamic>)
          .map((e) =>
              ProductOptionValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductOptionToJson(_$_ProductOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'is_required': instance.isRequired,
      'max_select': instance.maxSelect,
      'sort_order': instance.sortOrder,
      'values': instance.values,
    };

_$_ProductOptionValueModel _$$_ProductOptionValueModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductOptionValueModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
      isDefault: json['is_default'] as bool,
      sortOrder: (json['sort_order'] as num).toInt(),
    );

Map<String, dynamic> _$$_ProductOptionValueModelToJson(
        _$_ProductOptionValueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'is_default': instance.isDefault,
      'sort_order': instance.sortOrder,
    };
