// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_value_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttributeValueModel _$$_AttributeValueModelFromJson(
        Map<String, dynamic> json) =>
    _$_AttributeValueModel(
      id: (json['id'] as num).toInt(),
      value: json['value'] as String,
      colorCode: json['color_code'] as String?,
    );

Map<String, dynamic> _$$_AttributeValueModelToJson(
        _$_AttributeValueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'color_code': instance.colorCode,
    };
