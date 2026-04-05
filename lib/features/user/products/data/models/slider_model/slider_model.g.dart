// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SliderModel _$$_SliderModelFromJson(Map<String, dynamic> json) =>
    _$_SliderModel(
      photo: json['photo'] as String,
      linkType: json['link_type'] as String,
      value: valueFromJson(json['value']),
    );

Map<String, dynamic> _$$_SliderModelToJson(_$_SliderModel instance) =>
    <String, dynamic>{
      'photo': instance.photo,
      'link_type': instance.linkType,
      'value': valueToJson(instance.value),
    };
