// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttributesModel _$$_AttributesModelFromJson(Map<String, dynamic> json) =>
    _$_AttributesModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      attributesValues: (json['attribute_values'] as List<dynamic>)
          .map((e) => AttributeValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AttributesModelToJson(_$_AttributesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'attribute_values':
          instance.attributesValues.map((e) => e.toJson()).toList(),
    };
