// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartOptionModel _$$_CartOptionModelFromJson(Map<String, dynamic> json) =>
    _$_CartOptionModel(
      option:
          CartOptionInfoModel.fromJson(json['option'] as Map<String, dynamic>),
      values: (json['values'] as List<dynamic>)
          .map((e) => CartOptionValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CartOptionModelToJson(_$_CartOptionModel instance) =>
    <String, dynamic>{
      'option': instance.option.toJson(),
      'values': instance.values.map((e) => e.toJson()).toList(),
    };

_$_CartOptionInfoModel _$$_CartOptionInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartOptionInfoModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      isRequired: json['is_required'] as bool,
      maxSelect: (json['max_select'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$_CartOptionInfoModelToJson(
        _$_CartOptionInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'is_required': instance.isRequired,
      'max_select': instance.maxSelect,
    };

_$_CartOptionValueModel _$$_CartOptionValueModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartOptionValueModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$_CartOptionValueModelToJson(
        _$_CartOptionValueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
